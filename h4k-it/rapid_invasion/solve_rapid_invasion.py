#!/usr/bin/env python3
from pathlib import Path


def ror8(x: int, n: int) -> int:
    n &= 7
    return ((x >> n) | ((x << (8 - n)) & 0xFF)) & 0xFF


def solve_from_binary(path: str) -> str:
    data = Path(path).read_bytes()

    # Source table used by the VM-bytecode generator in main().
    src_base = 0x3CCD

    # The generator reads bytes at offsets [-2, -1, 0, +1, +2] from src_base+5*i
    # for i in [0, 29], so we need 152 bytes total.
    region = data[src_base - 2 : src_base + 150]
    if len(region) != 152:
        raise ValueError("Binary too short / unexpected layout")

    out = []
    for i in range(30):
        base = 2 + 5 * i
        c1 = region[base - 2]
        c2 = region[base - 1]
        c3 = region[base]
        c4 = region[base + 1]
        c5 = region[base + 2]

        # Forward VM transform per character:
        # r0 = input[i]
        # r0 ^= c1
        # r0 = (r0 + c2) & 0xff
        # r0 = (r0 - c3) & 0xff
        # r0 = rol(r0, c4 & 7)
        # assert r0 == c5
        #
        # Inverse:
        x = ror8(c5, c4 & 7)
        x = (x + c3) & 0xFF
        x = (x - c2) & 0xFF
        ch = x ^ c1
        out.append(ch)

    return bytes(out).decode("ascii")


def main() -> None:
    bin_path = "rapid_invasion/extracted/rapid_invasion"
    flag = solve_from_binary(bin_path)
    print(flag)


if __name__ == "__main__":
    main()

