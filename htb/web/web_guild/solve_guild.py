#!/usr/bin/env python3
import argparse
import os
import re
import select
import subprocess
import sys
import time

HAZARDS = {
    "GORGE": "STOP",
    "PHREAK": "DROP",
    "FIRE": "ROLL",
}
HAZARD_RE = re.compile(r"\b(GORGE|PHREAK|FIRE)\b")
ONLY_HAZARDS_RE = re.compile(r"^\s*(?:GORGE|PHREAK|FIRE)(?:\s*,\s*(?:GORGE|PHREAK|FIRE))*\s*$")
FLAG_RE = re.compile(r"HTB\{[^\r\n}]*\}")
PROMPT = "What do you do?"
READY_PROMPT = "Are you ready? (y/n)"


def parse_answer(line: str) -> str | None:
    stripped = line.strip()
    if not ONLY_HAZARDS_RE.fullmatch(stripped):
        return None
    hazards = HAZARD_RE.findall(stripped)
    if not hazards:
        return None
    return "-".join(HAZARDS[h] for h in hazards)


def run(host: str, port: int, timeout: float, debug: bool = False) -> str:
    proc = subprocess.Popen(
        ["nc", "-w", "5", host, str(port)],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )

    if proc.stdin is None or proc.stdout is None:
        raise RuntimeError("failed to create nc pipes")

    transcript = ""
    sent_ready = False
    prompt_scan_pos = 0
    answered_prompts = 0

    start = time.time()
    while time.time() - start < timeout:
        rlist, _, _ = select.select([proc.stdout], [], [], 0.2)

        if rlist:
            chunk = os.read(proc.stdout.fileno(), 4096)
            if not chunk:
                if proc.poll() is not None:
                    break
                continue
            text = chunk.decode(errors="ignore")
            transcript += text

            if debug:
                sys.stdout.write(text)
                sys.stdout.flush()

            m = FLAG_RE.search(transcript)
            if m:
                try:
                    proc.terminate()
                except Exception:
                    pass
                return m.group(0)

            if not sent_ready and READY_PROMPT in transcript:
                proc.stdin.write(b"y\n")
                proc.stdin.flush()
                sent_ready = True

            while True:
                prompt_pos = transcript.find(PROMPT, prompt_scan_pos)
                if prompt_pos == -1:
                    break

                context = transcript[max(0, prompt_pos - 240):prompt_pos]
                mctx = re.search(
                    r"(?:GORGE|PHREAK|FIRE)(?:\s*,\s*(?:GORGE|PHREAK|FIRE))*\s*$",
                    context,
                )
                if not mctx:
                    raise RuntimeError(
                        f"failed to parse hazards before prompt; context tail: {context!r}"
                    )
                hazards = HAZARD_RE.findall(mctx.group(0))
                answer = "-".join(HAZARDS[h] for h in hazards)

                proc.stdin.write((answer + "\n").encode())
                proc.stdin.flush()
                prompt_scan_pos = prompt_pos + len(PROMPT)
                answered_prompts += 1
                if debug and answered_prompts % 100 == 0:
                    print(f"[debug] answered {answered_prompts} prompts", file=sys.stderr)

        elif proc.poll() is not None:
            break

    m = FLAG_RE.search(transcript)
    if m:
        return m.group(0)

    tail = transcript[-1000:]
    elapsed = time.time() - start
    raise RuntimeError(
        "flag not found before timeout/process exit; "
        f"answered_prompts={answered_prompts}, elapsed={elapsed:.1f}s; transcript tail:\n{tail}"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description="Solve HTB misc challenge: Stop Drop and Roll")
    parser.add_argument("--host", default="154.57.164.76")
    parser.add_argument("--port", type=int, default=31397)
    parser.add_argument("--timeout", type=float, default=60.0)
    parser.add_argument("--debug", action="store_true")
    args = parser.parse_args()

    try:
        flag = run(args.host, args.port, args.timeout, args.debug)
    except Exception as exc:
        print(f"[-] solve failed: {exc}")
        return 1

    print(f"[+] FLAG: {flag}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
