import requests

BASE = "http://dolphin-cove.picoctf.net:49410"

user = "user1"
pw = "user1"

s = requests.Session()

# Get anonymous session
s.get(BASE + "/login")
pre = s.cookies.get("session")
print("[+] Pre-login session:", pre)

# Login
s.post(BASE + "/login", data={"username": user, "password": pw})
post = s.cookies.get("session")
print("[+] Post-login session:", post)

print("[+] Session rotated?", pre != post)
