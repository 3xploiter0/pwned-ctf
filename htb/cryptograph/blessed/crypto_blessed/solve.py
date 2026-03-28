#!/usr/bin/env python3
import json
import os
import sys
from functools import reduce

from pwn import context, process, remote
from fpylll import IntegerMatrix, LLL
from sympy import Poly, ZZ, symbols

from py_ecc.bls.ciphersuites import G2ProofOfPossession as bls
from py_ecc.bls.g2_primitives import G1_to_pubkey, pubkey_to_G1
from py_ecc.bls.point_compression import decompress_G1
from py_ecc.bls.typing import G1Compressed
from py_ecc.optimized_bls12_381.optimized_curve import G1, Z1, add, multiply, neg, normalize

context.log_level = "info"

P = 0xFFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
A = 0xFFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC
B = 0x5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B
GX = 0x6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296
GY = 0x4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5
G_P256 = (GX, GY)


def ec_add(P1, P2):
    if P1 is None:
        return P2
    if P2 is None:
        return P1

    x1, y1 = P1
    x2, y2 = P2

    if x1 == x2 and (y1 + y2) % P == 0:
        return None

    if x1 == x2 and y1 == y2:
        m = (3 * x1 * x1 + A) * pow(2 * y1, -1, P)
    else:
        m = (y2 - y1) * pow((x2 - x1) % P, -1, P)

    m %= P
    x3 = (m * m - x1 - x2) % P
    y3 = (m * (x1 - x3) - y1) % P
    return x3, y3


def on_curve(x, y):
    return (y * y - (x * x * x + A * x + B)) % P == 0


def recover_w3(values):
    assert len(values) == 6
    u1, v1, u2, v2, u3, v3 = values

    a1, b1, a2, b2, a3, b3 = symbols("a1 b1 a2 b2 a3 b3")
    vars_ = (a1, b1, a2, b2, a3, b3)

    ec1 = (v1 + b1) ** 2 - (u1 + a1) ** 3 - A * (u1 + a1) - B
    ec2 = (v2 + b2) ** 2 - (u2 + a2) ** 3 - A * (u2 + a2) - B
    ec3 = (v3 + b3) ** 2 - (u3 + a3) ** 3 - A * (u3 + a3) - B

    ec4 = ((u1 + a1) + (u2 + a2) + GX) * ((u2 + a2) - (u1 + a1)) ** 2 - ((v2 + b2) + (v1 + b1)) ** 2
    ec5 = ((u2 + a2) + (u3 + a3) + GX) * ((u3 + a3) - (u2 + a2)) ** 2 - ((v3 + b3) + (v2 + b2)) ** 2

    ec6 = (GY - (v1 + b1)) * ((u2 + a2) - (u1 + a1)) - ((v2 + b2) + (v1 + b1)) * ((u1 + a1) - GX)
    ec7 = (GY - (v2 + b2)) * ((u3 + a3) - (u2 + a2)) - ((v3 + b3) + (v2 + b2)) * ((u2 + a2) - GX)

    polys = [Poly(e.expand(), *vars_, domain=ZZ) for e in (ec1, ec2, ec3, ec4, ec5, ec6, ec7)]
    monomials_set = {m for poly in polys for m in poly.monoms()}
    tail = [
        (1, 0, 0, 0, 0, 0),
        (0, 1, 0, 0, 0, 0),
        (0, 0, 1, 0, 0, 0),
        (0, 0, 0, 1, 0, 0),
        (0, 0, 0, 0, 1, 0),
        (0, 0, 0, 0, 0, 1),
        (0, 0, 0, 0, 0, 0),
    ]
    for mon in tail:
        monomials_set.remove(mon)
    monomials = sorted(monomials_set) + tail

    coeff_rows = []
    for poly in polys:
        d = poly.as_dict()
        coeff_rows.append([int(d.get(m, 0)) % P for m in monomials])

    n_eq = 7
    n_mon = len(monomials)
    n = n_eq + n_mon

    mat = [[0 for _ in range(n)] for _ in range(n)]

    for i in range(n_eq):
        mat[i][i] = P

    for i in range(n_eq):
        for j in range(n_mon):
            mat[i][n_eq + j] = coeff_rows[i][j]

    for j in range(n_mon):
        mat[n_eq + j][n_eq + j] = 1

    mat[n - 1][n - 1] = 1 << 256

    mat_t = [list(col) for col in zip(*mat)]
    M = IntegerMatrix.from_matrix(mat_t)
    LLL.reduction(M)
    L = [[int(M[i, j]) for j in range(M.ncols)] for i in range(M.nrows)]

    candidates = []
    for row in L:
        if abs(row[-1]) != 1 << 256:
            continue
        if row[-1] < 0:
            row = [-x for x in row]

        cands = [x % P for x in row[-7:-1]]
        if all(0 <= t < (1 << 32) for t in cands):
            candidates.append(cands)

    if not candidates:
        raise RuntimeError("LLL did not yield a valid low-bit candidate")

    for c in candidates:
        ca1, cb1, ca2, cb2, ca3, cb3 = c
        x1, y1 = u1 + ca1, v1 + cb1
        x2, y2 = u2 + ca2, v2 + cb2
        x3, y3 = u3 + ca3, v3 + cb3

        if not (on_curve(x1, y1) and on_curve(x2, y2) and on_curve(x3, y3)):
            continue

        if ec_add((x1, y1), G_P256) != (x2, y2):
            continue
        if ec_add((x2, y2), G_P256) != (x3, y3):
            continue

        return x3, y3

    raise RuntimeError("No valid candidate after curve checks")


class Tube:
    def __init__(self):
        if len(sys.argv) == 1:
            self.io = process([sys.executable, "server.py"])
        else:
            host, port = sys.argv[1].split(":")
            self.io = remote(host, int(port))

    def recv_json(self):
        while True:
            line = self.io.recvline().decode().strip()
            if not line:
                continue
            return json.loads(line)

    def sr(self, data):
        self.io.sendlineafter(b"> ", json.dumps(data).encode())
        return self.recv_json()


def main():
    t = Tube()
    io = t.io

    res = t.sr({"cmd": "create"})
    my_sk = int(res["sk"], 16)
    my_id = int(res["robot_id"], 16)

    list_sig = bls.Sign(my_sk, b"list")
    robots = t.sr({"cmd": "list", "robot_id": hex(my_id), "sig": list_sig.hex()})

    ids = []
    pks = []
    for r in robots:
        ids.append(int(r["robot_id"], 16))
        pks.append(decompress_G1(G1Compressed(int(r["pk"], 16))))

    forge_sk = 1337
    target_msg = b"unveil_secrets"
    forged_pk = bls.SkToPk(forge_sk)
    forged_sig = bls.Sign(forge_sk, target_msg)
    forged_pk_pt = pubkey_to_G1(forged_pk)

    rogue_pk_pt = add(forged_pk_pt, neg(reduce(add, pks, Z1)))
    rogue_pk = G1_to_pubkey(rogue_pk_pt)

    assert normalize(add(reduce(add, pks), rogue_pk_pt)) == normalize(forged_pk_pt)

    res = t.sr({"cmd": "join", "pk": rogue_pk.hex()})
    rogue_id = int(res["robot_id"], 16)
    ids.append(rogue_id)
    assert len(ids) == 6

    values = [x << 32 for x in ids]
    x3, y3 = recover_w3(values)
    Wn = (x3, y3)

    res = t.sr({"cmd": "verify", "robot_id": hex(rogue_id)})
    if "error" in res:
        raise RuntimeError(f"verify failed before protocol: {res}")

    for _ in range(64 // 2):
        Wn = ec_add(Wn, G_P256)
        for coord in Wn:
            c_prompt = io.recvuntil(b"(hex): ")
            use_g1_in_first_check = b"* G1" in c_prompt

            bit = (coord >> 32) & 1
            if bit:
                x = int.from_bytes(os.urandom(16), "big")
                C = multiply(G1, x) if use_g1_in_first_check else multiply(rogue_pk_pt, x)
                io.sendline(bytes(G1_to_pubkey(C)).hex().encode())
                io.sendlineafter(b"Give me x (hex): ", hex(x).encode())
            else:
                sk_x = int.from_bytes(os.urandom(16), "big")
                C = add(multiply(G1, sk_x), neg(rogue_pk_pt))
                io.sendline(bytes(G1_to_pubkey(C)).hex().encode())
                io.sendlineafter(b"Give me (sk + x) (hex): ", hex(sk_x).encode())

    res = t.recv_json()
    if res.get("msg") != "Robot verified":
        raise RuntimeError(f"unexpected verify result: {res}")

    res = t.sr({"cmd": "unveil_secrets", "sig": forged_sig.hex()})
    print(res)

    try:
        t.sr({"cmd": "exit"})
    except Exception:
        pass


if __name__ == "__main__":
    main()
