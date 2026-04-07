#!/usr/bin/env python3
import argparse
import json
from typing import Any

import requests


def rpc(url: str, method: str, params: list[Any]) -> Any:
    payload = {"jsonrpc": "2.0", "id": 1, "method": method, "params": params}
    resp = requests.post(url, json=payload, timeout=12)
    resp.raise_for_status()
    data = resp.json()
    if "error" in data:
        raise RuntimeError(data["error"])
    return data["result"]


def decode_bytes32(hex_word: str) -> bytes:
    if not hex_word.startswith("0x"):
        raise ValueError(f"Bad word: {hex_word}")
    h = hex_word[2:]
    if len(h) % 2 != 0:
        h = "0" + h
    return bytes.fromhex(h)


def main() -> None:
    ap = argparse.ArgumentParser(description="SkyPie storage reader")
    ap.add_argument("--rpc", default="http://labs.ctfzone.com:8545", help="RPC URL")
    ap.add_argument(
        "--addr",
        default="0xe78A0F7E598Cc8b0Bb87894B0F60dD2a88d6a8Ab",
        help="SkyPieVault address",
    )
    args = ap.parse_args()

    print("[*] chainId:", rpc(args.rpc, "eth_chainId", []))
    code = rpc(args.rpc, "eth_getCode", [args.addr, "latest"])
    print("[*] code bytes:", (len(code) - 2) // 2)

    # SkyPieVault layout:
    # slot 3 = _secretIngredient (bytes32)
    # slot 4 = _vaultKey (bytes32)
    # slot 6 = _flagPart1 (bytes32)
    # slot 7 = _flagPart2 (bytes32)
    s3 = rpc(args.rpc, "eth_getStorageAt", [args.addr, hex(3), "latest"])
    s4 = rpc(args.rpc, "eth_getStorageAt", [args.addr, hex(4), "latest"])
    s6 = rpc(args.rpc, "eth_getStorageAt", [args.addr, hex(6), "latest"])
    s7 = rpc(args.rpc, "eth_getStorageAt", [args.addr, hex(7), "latest"])

    secret_ingredient = decode_bytes32(s3).rstrip(b"\x00").decode("ascii", errors="ignore")
    vault_key = decode_bytes32(s4).rstrip(b"\x00").decode("ascii", errors="ignore")
    flag = (decode_bytes32(s6) + decode_bytes32(s7)).rstrip(b"\x00").decode(
        "ascii", errors="ignore"
    )

    print("[*] secretIngredient:", secret_ingredient)
    print("[*] vaultKey:", vault_key)
    print("[+] flag:", flag)


if __name__ == "__main__":
    main()

