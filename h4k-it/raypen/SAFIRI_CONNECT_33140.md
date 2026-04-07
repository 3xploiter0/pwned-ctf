# Safiri Connect (209.38.92.205:33140) - Investigation Notes

## Scope
- Challenge: Safiri Connect
- Target: `http://209.38.92.205:33140`
- Flag format: `GoH{...}`
- Workspace folder: `raypen`

## Timeline
- 2026-04-04 19:44:09 UTC: Started investigation.
- 2026-04-04 20:06 UTC: Target began timing out on all HTTP requests.

## Initial Fingerprint
- `nmap -Pn -sV -p 33140 209.38.92.205`
  - `33140/tcp open http Werkzeug httpd 3.0.3 (Python 3.11.15)`
- Landing page:
  - Safiri Connect subscriber portal
  - Same template family seen in earlier Safiri instances

## Confirmed Endpoints
- `GET /` -> `200` login HTML
- `GET /dashboard` -> login HTML (unauth)
- `GET /health` -> `200 {"status":"ok"}` (while instance healthy)
- `GET /api/v1/session` -> `401 {"error":"Authentication required"}`
- `OPTIONS /api/v1/session` -> `Allow: GET, HEAD, OPTIONS`
- `POST /api/v1/auth/login` -> active
- `POST /api/v1/auth/logout` -> `200 {"success":true}` + clears cookie

## Fuzzing Results
Files:
- `raypen/root_ffuf_33140.json`
- `raypen/apiv1_ffuf_33140.json`
- `raypen/auth_ffuf_33140.json`
- `raypen/apiv1_post_ffuf_33140.json`
- `raypen/auth_post_ffuf_33140.json`
- `raypen/apiv1_common_get_ffuf_33140.json`
- `raypen/auth_common_get_ffuf_33140.json`

Findings:
- Root paths found: `/dashboard`, `/health`
- API paths found: `/api/v1/session`
- Auth paths found: `/api/v1/auth/login`, `/api/v1/auth/logout`
- No additional hidden route discovered from common API and common web lists

## Auth Behavior Testing
Using `raypen/test_login_payloads.py matrix`:
- `+256700000000` + `password=true` -> `500` (oracle signal)
- Neighbor MSISDNs with `password=true` -> `401`
- SQLi payloads tested in `msisdn` and `password` -> no bypass (`401`)
- Type confusion payloads mostly produce `500`, not auth success

## MSISDN Oracle Enumeration
Command:
- `python3 raypen/test_login_payloads.py enum --start 256700000000 --end 256700000250`

Result:
- Only one oracle hit (`500`): `+256700000000`
- Others: `401`

## Session Forgery Attempts
- Added `cookie` mode in `raypen/test_login_payloads.py`
- Tested multiple likely Flask secrets and multiple session payload shapes
- No successful `/api/v1/session` bypass observed
- Some transient request timeouts, no positive auth result

## Password Guessing Attempts
### 1) Hint-based dictionary
File:
- `raypen/pw_hint_candidates.txt`

Command:
- `python3 raypen/test_login_payloads.py bruteforce --msisdn +256700000000 --wordlist raypen/pw_hint_candidates.txt --cooldown 65 --window 5`

Result:
- Completed all 52 entries
- No hit

### 2) Lock race calibration (parallel burst)
- Concurrent burst after cooldown can exceed 5-attempt lock window
- Observed example: batch of 25 produced about 19x `401` and 6x `429`
- This improves throughput versus strict 5-per-window sequential brute-force

### 3) Top 1000 common passwords (xato)
Command used:
- `python3 raypen/test_login_payloads.py burst --msisdn +256700000000 --wordlist /usr/share/seclists/Passwords/Common-Credentials/xato-net-10-million-passwords-1000.txt --batch-size 25 --cooldown 65 --state raypen/burst_top1000_state.json`

Progress achieved before target degraded:
- State file: `raypen/burst_top1000_state.json`
- Current index: `500`
- Roughly first half of xato-1000 attempted
- No login success observed in completed portion

## Current Blocker
- Target stopped responding over HTTP:
  - `curl --max-time 10 http://209.38.92.205:33140/health` -> timeout
- Port still appears open via nmap, but app layer is unresponsive.
- Likely instance expiration or backend hang.

## Resume Instructions (Fast)
1. Extend/restart challenge instance from platform UI.
2. Verify health:
   - `curl -i --max-time 10 http://<NEW_HOST:PORT>/health`
3. If host/port changes, run with `--base`:
   - `python3 raypen/test_login_payloads.py burst --base http://<NEW_HOST:PORT> --msisdn +256700000000 --wordlist /usr/share/seclists/Passwords/Common-Credentials/xato-net-10-million-passwords-1000.txt --batch-size 25 --cooldown 65 --state /home/mfekenyuzi/pwned-ctf/h4k-it/raypen/burst_top1000_state.json`
4. Continue from saved state index and watch for:
   - `200 {"success":...}` or any `GoH{...}` in response/session data.

## Key Artifacts in `raypen`
- `SAFIRI_CONNECT_33140.md` (this report)
- `test_login_payloads.py` (modular helper: matrix/enum/bruteforce/burst/cookie/session)
- `pw_hint_candidates.txt`
- `burst_top1000_state.json`
- ffuf JSON output files listed above
