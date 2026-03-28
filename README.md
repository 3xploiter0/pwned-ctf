# pwned-ctf

A personal archive of CTF work: challenge files, solve scripts, notes, reverse-engineering output, forensic artifacts, and small exploit experiments collected while practicing across different platforms.

This repository is not a polished framework or a single tool. It is a working lab notebook in code form, organized by platform and challenge category.

## What This Repo Contains

- Challenge-solving scripts in Python and other languages
- Web, crypto, pwn, reverse engineering, forensic, OSINT, hardware, mobile, and misc challenge material
- Original challenge assets such as binaries, images, archives, packet captures, and source snapshots
- Scratch notes and one-off proof-of-concept files created during solving

## Platforms Covered

- `picoctf/` - picoCTF challenge work, source snapshots, scripts, and notes
- `ctfzone/` - CTFZone challenges grouped by category
- `htb/` - Hack The Box challenge files and extracted material
- `overthewire/` - OverTheWire notes
- `cyber-game-world-2026/` - Cyber Game World practice material
- `h4k-it/` - small challenge artifacts and pentest-style scratch files

## Repository Layout

```text
pwned-ctf/
├── picoctf/
│   ├── cryptograph/
│   ├── general-skills/
│   ├── reverse-eng/
│   ├── pico2026/
│   └── source/
├── ctfzone/
│   ├── blockchain/
│   ├── cryptograph/
│   ├── forensic/
│   ├── hardware/
│   ├── mobile/
│   ├── osint/
│   ├── pwn/
│   ├── reverse-eng/
│   └── web/
├── htb/
│   ├── blockchain/
│   ├── forensic/
│   ├── hardware/
│   ├── ics/
│   ├── pwn/
│   ├── rev/
│   └── web/
├── overthewire/
├── cyber-game-world-2026/
└── h4k-it/
```

## How I Use This Repo

Most folders follow a simple pattern:

- challenge assets live beside the solve script or notes
- extracted or decompiled output is kept near the original challenge
- quick experiments are stored directly in the relevant directory instead of being over-abstracted

That means the structure is intentionally practical rather than uniform.

## Typical File Types You’ll Find

- `solve.py`, `script.py`, and similar one-off solver scripts
- text notes with challenge observations or recovered values
- binaries, firmware, APK extraction output, images, and archives
- Docker or source snapshots for web challenges when available

## Publishing Note

This repository includes raw challenge material and locally generated artifacts. Before pushing publicly, review it for:

- flags or recovered answers
- credentials, dumps, or tokens
- virtual environments, build output, and decompiler output
- copyrighted or redistribution-restricted challenge files

## Why This Exists

I use this repo to keep a searchable history of solved challenges, failed attempts, tooling experiments, and reference material across multiple CTF ecosystems. It is meant to be useful first and tidy second.

## License

No license has been added yet. If this repository is going public, add one before publishing if you want to define reuse terms clearly.
