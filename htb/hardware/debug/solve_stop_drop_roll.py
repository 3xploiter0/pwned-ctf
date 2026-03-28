#!/usr/bin/env python3
import re
import socket
import sys
import time

HOST = "154.57.164.76"
PORT = 31397
TIMEOUT_SECONDS = 240

MAP = {
    "GORGE": "STOP",
    "PHREAK": "DROP",
    "FIRE": "ROLL",
}

HAZARDS_RE = re.compile(r"(?:GORGE|PHREAK|FIRE)(?:,\s*(?:GORGE|PHREAK|FIRE))*")
FLAG_RE = re.compile(r"HTB\{[^}\n]+\}")


def parse_answer(hazards_text: str) -> str:
    items = [h.strip() for h in hazards_text.split(",")]
    return "-".join(MAP[item] for item in items)


def solve(host: str, port: int) -> str:
    started = False
    sent_ready = False
    buf = ""
    start = time.time()

    with socket.create_connection((host, port), timeout=5) as sock:
        sock.settimeout(1.0)

        while time.time() - start < TIMEOUT_SECONDS:
            try:
                chunk = sock.recv(65535)
            except socket.timeout:
                continue

            if not chunk:
                break

            text = chunk.decode("utf-8", "ignore")
            buf += text

            flag_match = FLAG_RE.search(buf)
            if flag_match:
                return flag_match.group(0)

            if not sent_ready and "Are you ready? (y/n)" in buf:
                sock.sendall(b"y\n")
                sent_ready = True

            if sent_ready and not started and "Ok then! Let's go!" in buf:
                started = True

            while started and "What do you do?" in buf:
                prompt_idx = buf.find("What do you do?")
                left = buf[:prompt_idx]
                hazard_matches = list(HAZARDS_RE.finditer(left))
                if not hazard_matches:
                    break

                hazards = hazard_matches[-1].group(0)
                answer = parse_answer(hazards)
                sock.sendall((answer + "\n").encode())
                buf = buf[prompt_idx + len("What do you do?") :]

                flag_match = FLAG_RE.search(buf)
                if flag_match:
                    return flag_match.group(0)

    raise RuntimeError("flag not found before timeout/connection close")


if __name__ == "__main__":
    try:
        flag = solve(HOST, PORT)
        print(flag)
    except Exception as exc:
        print(f"[!] {exc}", file=sys.stderr)
        sys.exit(1)
