# Remnants of Akili - Digital Forensics Writeup

## Challenge
- Name: Remnants of Akili
- Category: Digital Forensics
- Points: 100
- Prompt: `What is the flag?`

## Scenario Summary
The provided artifacts are from workstation `AKILI-WKSTN007`. The objective is to investigate suspicious activity and recover the hidden flag from forensic remnants.

## Evidence Provided
- `NTUSER_extract.reg`
- `Security_Events.csv`
- `Prefetch_Summary.txt`
- `CASE_README.txt`

## Investigation Workflow

### 1) Triage execution activity (Prefetch + Security log)
Start with Prefetch summary to spot unusual binaries:

```bash
rg -n 'WDH\.EXE|POWERSHELL\.EXE|NOTE:' Prefetch_Summary.txt
```

Important findings:
- `WDH.EXE` executed at `2024-11-18 02:33:21 UTC`
- `POWERSHELL.EXE` executed at `2024-11-18 02:34:17 UTC`
- Note says `WDH.EXE` is in `C:\Users\dev001\AppData\Local\Temp\WDH\` and is not a known system binary

Correlate with Security events:

```bash
rg -n 'wdh\.exe|powershell\.exe|02:33:21|02:34:17|4688' Security_Events.csv
```

Correlation:
- Event `4688`: `wdh.exe` started by `explorer.exe` at `02:33:21`
- Event `4688`: `powershell.exe` started by `wdh.exe` at `02:34:17`

This strongly suggests suspicious staged execution (`wdh.exe` -> `powershell.exe`).

### 2) Inspect user registry hive export
`NTUSER_extract.reg` is UTF-16LE, so decode with `strings -el`:

```bash
strings -el NTUSER_extract.reg | sed -n '1,220p'
```

Key artifacts observed:
- Run key persistence entry:
  - `"WinDiagHelper"="C:\\Users\\dev001\\AppData\\Local\\Temp\\WDH\\wdh.exe --silent"`
- Custom software key:
  - `[HKEY_CURRENT_USER\SOFTWARE\WinDiagHelper\Config]`
- Within it:
  - `"License"="GoH{cbc69453367b}"`
  - `"LastSync"="2024-11-18T02:34:17Z"`
  - `"SyncHost"="10.44.0.55:4444"`

### 3) Extract the flag directly
Use one-liner extraction from the UTF-16 registry export:

```bash
strings -el NTUSER_extract.reg | sed -n 's/^"License"="\(GoH{[^"]*}\)"$/\1/p'
```

Output:
```text
GoH{cbc69453367b}
```

## Final Flag
`GoH{cbc69453367b}`

## Why this is valid
- Prefetch and Event Log timeline confirm suspicious execution around `02:33-02:34 UTC` on `2024-11-18`.
- Registry Run key shows persistence for the same suspicious binary path.
- The challenge-format token appears in `WinDiagHelper\Config\License` and matches expected flag pattern `GoH{...}`.

## Notes
- The included `solve.sh` automates retrieval + extraction, but remote instance access may expire.
- Even without network access, the local artifacts are sufficient to recover the flag reproducibly.
