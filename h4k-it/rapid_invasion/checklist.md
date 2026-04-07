# Rapid Invasion - Execution Checklist

Use this as your runbook while solving.

## A) Initial Capture
- [ ] Save full page source as `page.html`
- [ ] Save all network-loaded `.js/.mjs/.json/.wasm/.map` into `assets/`
- [ ] Export storage/cookies into `storage_dump.txt`

## B) Quick Grep Pass
Run:

```bash
mkdir -p rapid_invasion/assets
rg -n -i "ctfzone|flag|opcode|shellcode|byte|\\x|0x|atob|fromcharcode|wasm|xor|decrypt" rapid_invasion/page.html rapid_invasion/assets || true
```

- [ ] Identify at least one suspicious blob/string
- [ ] Copy candidates into `findings.txt`

## C) Candidate Classification
For each candidate in `findings.txt`, label it:
- [ ] hex string
- [ ] escaped bytes (`\\x..`)
- [ ] base64
- [ ] integer byte array
- [ ] unknown

## D) Decode to Bytes
- [ ] Convert candidate to `raw.bin`
- [ ] Run:
```bash
file raw.bin
xxd raw.bin | sed -n '1,80p'
strings -n 4 raw.bin | sed -n '1,120p'
```

## E) Disassemble
- [ ] `ndisasm -b 64 raw.bin | sed -n '1,160p'`
- [ ] `ndisasm -b 32 raw.bin | sed -n '1,160p'`
- [ ] Keep architecture with coherent output

## F) Reverse Logic
- [ ] Identify transform loop (xor/add/sub/rotate/etc.)
- [ ] Reproduce in Python
- [ ] Invert transform to recover plaintext
- [ ] Confirm recovered value matches `ctfzone{...}`

## G) Final Validation
- [ ] No hidden whitespace/newlines
- [ ] Correct case
- [ ] Proper braces

## H) Evidence Log Template
Fill this while solving:

```text
[time] collected: page.html + N assets
[time] suspicious data found in: <file>:<line>
[time] candidate type: <hex/base64/array/...>
[time] decode method: <method>
[time] disasm arch: <x86/x64/...>
[time] core logic: <1-2 lines>
[time] recovered plaintext: <value>
[time] final flag: ctfzone{...}
```

