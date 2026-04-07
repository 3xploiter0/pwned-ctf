# Deep Root - Incident Response CTF Write-up

## Challenge
- Name: `Deep Root`
- Category: Incident Response
- Target instance: `209.38.92.205:33223`
- Expected flag format: `GoH{...}`

## Objective
Identify and recover the flag from exposed incident artifacts on the running web instance.

## Investigation Timeline

### 1) Service fingerprinting
Command:
```bash
nmap -Pn -sV -p 33223 209.38.92.205
```
Result:
- `33223/tcp open http Gunicorn`

### 2) Initial web triage
Command:
```bash
curl -i http://209.38.92.205:33223/
```
Findings:
- Defaced portal with actor string `SHADOW_UNIT_9`.
- No direct flag on homepage.

### 3) robots.txt discovery
Command:
```bash
curl -i http://209.38.92.205:33223/robots.txt
```
Result:
```txt
User-agent: *
Disallow: /internal/
Disallow: /files
```
This exposed two non-public routes to investigate.

### 4) Internal page analysis
Command:
```bash
curl -i http://209.38.92.205:33223/internal/
```
Key HTML comment clues:
- `<!-- build: rev umoja-build-rev-2024-11-01 -->`
- `<!-- cache_ref: .sys_update_cache -->`
- `<!-- module_ver: 1.4 -->`

### 5) File retrieval endpoint behavior
`/files` behaved differently depending on query parameter names:
- `/files` -> `400`
- `/files?file=...` -> `400`
- `/files?path=...` -> `400`
- `/files?name=.sys_update_cache` -> `200` (returned Python cache artifact)

Command:
```bash
curl -i "http://209.38.92.205:33223/files?name=.sys_update_cache"
```

### 6) Decode malicious payload
The retrieved artifact (`.sys_update_cache`) included:
- `_payload` (hex-encoded, then base64, then zlib)
- XOR decode helper `_d(data, key)`
- Note saying key comes from `/internal/` build revision token.

Recovered key from HTML source:
- `umoja-build-rev-2024-11-01`

Decoded output contained a remote admin module config:
```python
CONFIG = {
    "module_id": "sys_update_checker",
    "version": "3.1.4",
    "c2_host": "hxxps://185.220.101[.]45",
    "auth_key": "GoH{26715762d481}",
    ...
}
```

## Flag
`GoH{26715762d481}`

## Incident Response Notes
- Threat actor label on defacement: `SHADOW_UNIT_9`
- Hidden artifact route: `/files?name=.sys_update_cache`
- Build token used as XOR key: `umoja-build-rev-2024-11-01`
- C2 IOC (defanged): `hxxps://185.220.101[.]45`
- Malware behavior:
  - Decrypts staged config
  - Performs socket beacon to C2 on TCP `4444`
  - Sends auth key during beacon

## Conclusion
The flag is the `auth_key` recovered from the decrypted malware configuration cache.
