# Rapid Invasion (Reverse) - No-File/No-Instance Playbook

## Current Situation
- Challenge title: `Rapid Invasion`
- Category: `Reverse Engineering`
- Description hint: `Can we really view opcode in the plain or not?`
- Provided to you: challenge page only (no downloadable file, no docker endpoint)
- Flag format: `ctfzone{...}`

This usually means the real artifact is hidden in:
- challenge page HTML
- linked JavaScript/WASM/static files
- source maps
- inline encoded data (hex, base64, escaped bytes)
- response headers/cookies/local storage

## Key Hypothesis
The phrase "view opcode in the plain" strongly suggests opcode bytes are exposed in plain sight (or lightly obfuscated) in frontend content.

Likely flow:
1. Find hidden byte sequence in page/assets.
2. Decode to raw bytes.
3. Disassemble/emulate.
4. Recover plaintext/flag.

## Step-by-Step Workflow

## 1) Browser Recon (first 5-10 minutes)
Open challenge page and do all of these:

1. `View Page Source` (not just Elements tab).
2. DevTools -> `Network` -> reload page.
3. Save:
   - document HTML
   - all `.js`, `.mjs`, `.wasm`, `.json`, source maps (`.map`)
4. DevTools -> `Application`:
   - Local Storage
   - Session Storage
   - IndexedDB
   - Cookies
5. Search in DevTools global search (`Ctrl+Shift+F`) for:
   - `opcode`, `shellcode`, `byte`, `flag`, `ctfzone`
   - `0x`, `\\x`, `fromCharCode`, `atob`, `btoa`
   - long arrays like `[72, 49, 192, ...]`
   - long hex/base64 strings

If you find suspicious data, copy it into a local text file in this folder.

## 2) Static Asset Triage
For every downloaded JS/WASM/JSON:

```bash
file <asset>
strings -n 6 <asset> | rg -i "ctfzone|flag|opcode|shell|exec|vm|xor|base64|\\x|0x"
```

For minified JS:
```bash
js-beautify -r <asset>.js   # if available
```

For wasm:
```bash
wasm2wat <asset>.wasm -o <asset>.wat   # if wabt exists
strings -n 6 <asset>.wasm | rg -i "flag|ctfzone|opcode|xor|key"
```

## 3) Extract Encoded Byte Material
Common forms you may find:

1. Hex contiguous:
   - `4831c050...`
2. Escaped bytes:
   - `\\x48\\x31\\xc0...`
3. Integer arrays:
   - `[72,49,192,...]`
4. Base64:
   - `SGVsbG8...`

Normalize into `raw.bin` and inspect:

```bash
xxd raw.bin | sed -n '1,80p'
strings -n 4 raw.bin | sed -n '1,120p'
file raw.bin
```

## 4) Determine Architecture From Opcodes
Quick signals:
- x86/x64 prologue patterns often start with bytes like `55 48 89 e5`, `48 31 c0`, etc.
- 32-bit x86 may show `55 89 e5`.
- Shellcode often contains syscall/int instructions.

Try disassembly:

```bash
ndisasm -b 64 raw.bin | sed -n '1,120p'
ndisasm -b 32 raw.bin | sed -n '1,120p'
objdump -D -b binary -m i386:x86-64 raw.bin | sed -n '1,160p'
```

Pick the output that looks like coherent logic instead of garbage.

## 5) Decode/Deobfuscate Logic
Look for:
- XOR loops
- add/sub/rol/ror transforms
- table lookups
- byte-by-byte compare against expected flag

Typical pattern:
1. Hardcoded encoded bytes.
2. Loop transform.
3. Compare with input.

Reimplement transform in Python and invert it to recover the flag.

## 6) Dynamic Analysis (if static is hard)
If code can run in browser:
- Set breakpoints at:
  - `eval`, `Function`, `WebAssembly.instantiate`, compare/check function
- Hook decode function arguments and return values.
- Dump intermediate buffers.

If native shellcode-like bytes:
- emulate with Unicorn/Qiling
- or trace in Ghidra/IDA/r2 after wrapping into minimal binary.

## 7) Validation
Before submitting:
1. Ensure recovered value matches exactly `ctfzone{...}`.
2. Check case sensitivity and braces.
3. Remove whitespace/newlines.

## Fast Decision Tree
- No downloadable file?
  - Treat page+assets as artifact.
- No obvious flag string?
  - Hunt encoded bytes.
- Bytes found but unreadable?
  - Identify arch and disassemble.
- Disassembly shows transforms?
  - Invert algorithm in Python.
- Still blocked?
  - Re-check source maps, wasm, local storage, and runtime buffers.

## What You Should Collect Next (Actionable)
To solve this specific challenge quickly, collect and place in `rapid_invasion/`:
1. `page.html` (full source)
2. all linked JS files
3. any wasm files
4. suspicious extracted strings/arrays in `findings.txt`

Once those are present, the solve path becomes deterministic.

## Writeup Skeleton (for final report)
1. Challenge reconnaissance and no-artifact interpretation.
2. Asset enumeration and suspicious opcode discovery.
3. Byte decoding pipeline.
4. Disassembly and reverse-engineered logic.
5. Flag recovery and verification.

