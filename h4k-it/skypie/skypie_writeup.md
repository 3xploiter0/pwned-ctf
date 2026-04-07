# SkyPie Blockchain Writeup

## Challenge Info
- Category: Blockchain (Easy)
- RPC: `http://labs.ctfzone.com:8545`
- Contract: `0xe78A0F7E598Cc8b0Bb87894B0F60dD2a88d6a8Ab`
- Flag format: `ctfzone{...}`

## Idea
In Solidity, `private` variables are only private at source-code level.  
Their values still live in contract storage and can be read with `eth_getStorageAt`.

This contract stores:
- `_secretIngredient` (`bytes32`)
- `_vaultKey` (`bytes32`)
- `_flagPart1` (`bytes32`)
- `_flagPart2` (`bytes32`)

So the intended solve is storage reading.

## 1) Inspect Storage Layout
From `SkyPieVault.sol`:

```solidity
bool public locked;              // slot 0
uint256 public treasuryBalance;  // slot 1
address public owner;            // slot 2
bytes32 private _secretIngredient; // slot 3
bytes32 private _vaultKey;         // slot 4
Recipe private _recipe;            // slot 5 (fits in one slot)
bytes32 private _flagPart1;        // slot 6
bytes32 private _flagPart2;        // slot 7
```

`Recipe` packs into one slot (`uint64 + uint64 + bytes16 = 32 bytes`), so flag parts are at slots 6 and 7.

## 2) Read Slots via RPC
Example JSON-RPC request:

```json
{"jsonrpc":"2.0","id":1,"method":"eth_getStorageAt","params":["<address>","0x6","latest"]}
```

Relevant values recovered:
- slot 3: `0x73746172647573745f616e645f6d6f6f6e6265616d7300000000000000000000`
- slot 4: `0x7468335f736b795f31735f7468335f6c316d3174000000000000000000000000`
- slot 6: `0x6374667a6f6e657b707231763474335f737430723467335f31735f6e30745f73`
- slot 7: `0x305f707231763474337d00000000000000000000000000000000000000000000`

Decoded ASCII:
- `_secretIngredient` = `stardust_and_moonbeams`
- `_vaultKey` = `th3_sky_1s_th3_l1m1t`
- `_flagPart1 + _flagPart2` = `ctfzone{pr1v4t3_st0r4g3_1s_n0t_s0_pr1v4t3}`

## 3) Final Flag
`ctfzone{pr1v4t3_st0r4g3_1s_n0t_s0_pr1v4t3}`

## 4) Reproduction Script
I added:
- `skypie/solve_skypie.py`

Run:

```bash
python3 skypie/solve_skypie.py
```

It queries slots 3/4/6/7 and prints the decoded values and flag.

