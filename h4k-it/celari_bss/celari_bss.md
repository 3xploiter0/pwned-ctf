# Celari BSS CTF Writeup

## Challenge
- Category: Pentest / Web
- Target: Docker web instance at `http://209.38.92.205:33069`
- Flag format: `GoH{...}`
- Final flag: `GoH{a8033066ea94}`

## 1. Initial Recon

### Homepage discovery
`GET /` exposed a partner gateway and listed useful API paths:
- `POST /api/bss/v1/auth/register`
- `POST /api/bss/v1/auth/token`
- `GET /api/bss/v1/partners`
- `GET /api/bss/v1/settlement/summary`
- `GET /api/bss/v1/settlement/{carrier_code}` (noted as elevated role)

It also linked:
- `/.well-known/jwks.json`

This immediately suggested a JWT-based auth challenge.

### JWKS check
`GET /.well-known/jwks.json` returned a public RSA key with:
- `alg: RS256`
- `kid: celari-bss-2024-001`

So legit tokens are expected to be RS256-signed.

## 2. Valid User Flow

I registered a partner:
- `POST /api/bss/v1/auth/register` with JSON body:
```json
{"company_name":"testco","country":"KE"}
```

Response returned:
- `api_key`
- `partner_code`
- `role: partner`
- `token` (JWT)

Using this legit token:
- `GET /api/bss/v1/settlement/summary` -> `200`
- `GET /api/bss/v1/partners` -> `200`
- `GET /api/bss/v1/settlement/CELARI-INT` -> `403`

The key error message from the privileged endpoint was:
- `"Insufficient privileges. This endpoint requires the internal-settlement role."`

This leaked the exact role name required: `internal-settlement`.

## 3. Finding the Vulnerability

### Why JWT handling looked weak
Given:
- Server advertises RS256 + JWKS
- Role is enforced through JWT claim (`role`)

I tested algorithm handling:
- `alg: none` tokens were rejected with `401 Unsupported algorithm` (good)
- HS256-forged tokens behaved differently:
  - Some signatures produced `401 Signature verification failed`
  - But specific HS256 variants were **accepted as valid tokens**, then failed only on role check with `403 Insufficient privileges`

That behavior indicates the server was accepting HMAC-signed tokens in a flow intended for RSA verification.

### Root cause
The app appears vulnerable to JWT algorithm confusion (RS256 <-> HS256):
- It trusts the token’s `alg` header too much.
- It uses key material in a way that lets attacker-crafted HS256 tokens verify.
- Since the attacker can control payload claims, role escalation is possible.

## 4. Exploitation Chain

1. Register a normal account and get a valid JWT.
2. Decode token payload without verification.
3. Set `role` to the required privileged value: `internal-settlement`.
4. Preserve expected fields (`sub`, `iss`) and refresh timing claims (`iat`, `exp`, `jti`).
5. Build a forged JWT header:
   - `alg: HS256`
   - `typ: JWT`
   - `kid: celari-bss-2024-001`
6. Sign with HMAC-SHA256 using the JWKS-derived RSA public key material as secret (the accepted variant found by testing).
7. Call:
   - `GET /api/bss/v1/settlement/CELARI-INT`
8. Endpoint returns `200` and includes:
```json
{"notes":"GoH{a8033066ea94}"}
```

## 5. Script Walkthrough (`solve_celari_bss.py`)

Path: `/pwned-ctf/h4k-it/celari_bss/solve_celari_bss.py`

### What it does end-to-end
1. Connects to target base URL.
2. Fetches JWKS.
3. Registers a new partner and obtains a legit token.
4. Parses legit header/payload for baseline claims.
5. Tests legit token against endpoints.
6. Tries escalation strategies:
   - `alg=none` (expected fail)
   - HS256 confusion attempts using multiple candidate secrets
   - HS384/HS512 fallback tests
7. Uses role candidates including `internal-settlement`.
8. Sends forged tokens to privileged settlement endpoints.
9. Scans response bodies for regex `GoH\{...\}`.
10. Prints and exits immediately when flag is found.

### Important functions
- `b64url(...)`
  - Base64url encoding without padding for JWT segments.
- `jwt_none(payload)`
  - Builds a raw unsigned JWT for `alg=none` tests.
- `jwt_hmac(payload, secret, alg, kid)`
  - Manually constructs and signs HS* JWTs with HMAC.
- `build_payload(base_payload, role)`
  - Copies baseline payload, overwrites role, refreshes `iat/exp/jti`.
- `try_token(...)`
  - Calls selected endpoints with a token, prints status/error snippets, extracts flag if present.
- `get_flag(...)`
  - Regex extraction for `GoH{...}` pattern.

### Why the script is robust for CTF runtime
- It does not assume one exact role name only.
- It collects server error snippets to reveal missing role/validation details.
- It tests multiple secret candidates and algorithms quickly.
- It exits as soon as flag is observed.

## 6. Reproducing

Run:
```bash
python3 -u solve_celari_bss.py --base http://209.38.92.205:33069
```

Expected successful tail:
- `... Trying RS256->HS256 confusion variants...`
- `/api/bss/v1/settlement/CELARI-INT -> 200`
- `FLAG FOUND ... GoH{a8033066ea94}`

## 7. Security Lesson / Fix

To prevent this class of bug:
- Hardcode accepted JWT algorithm (`RS256`) server-side.
- Never trust token header `alg` from client input.
- Keep asymmetric verification path separate from HMAC path.
- Validate role claims against server-side authorization policy and trusted issuer context.
- Add tests specifically for algorithm confusion and `alg=none`.
