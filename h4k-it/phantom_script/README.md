# Phantom Script - Incident Response CTF Write-up

## Challenge
- Name: `Phantom Script`
- Category: Incident Response
- Target instance: `209.38.92.205:33222`
- Expected flag format: `GoH{...}`

## Investigation Steps

### 1) Service enumeration
Command used:
```bash
nmap -Pn -sV -p 33222 209.38.92.205
```
Result:
- `33222/tcp open http Gunicorn`

### 2) Initial web triage
Command used:
```bash
curl -i http://209.38.92.205:33222/
```
Findings:
- Defaced homepage (`OWNED BY Z3R0_PHANTOM`).
- Page source contains a high-value hint:
  - `Malware-analysis artifact: /static/js/analytics.js is available for static review.`

### 3) Pull and inspect suspicious script
Command used:
```bash
curl -i http://209.38.92.205:33222/static/js/analytics.js
```
Findings:
- File pretends to be Google Analytics.
- Contains obfuscated payload:
  - base64 fragments in `var _0x3f2a=[...]`
  - then `eval(atob(_0xb891()));`

### 4) Extract token from obfuscated payload
From captured script fragments, token chunk present as base64:
- `R29Ie2MwMGQwNTEwMTE1Y30i`

Decode command:
```bash
printf 'R29Ie2MwMGQwNTEwMTE1Y30i' | base64 -d
```
Decoded value:
- `GoH{c00d0510115c}"`

The trailing `"` is from JSON/script quoting, so the actual token/flag value is:
- `GoH{c00d0510115c}`

## Flag
`GoH{c00d0510115c}`

## Incident Response Notes (IOCs + TTP summary)
- Defacement actor string: `Z3R0_PHANTOM`
- Malicious script path: `/static/js/analytics.js`
- Obfuscation technique: split base64 + runtime `eval(atob(...))`
- Data collection selectors indicate payment-card data harvesting:
  - `#amount-field`
  - `#account-number`
  - `#pin-entry`
  - `input[name=cvv]`
- Exfil endpoint (defanged in script): `hxxps://185.220.101[.]45/collect/v2`
- Exfil header used by malware: `X-Auth-Token`

## Conclusion
The flag is embedded as the attacker token in the obfuscated `analytics.js` skimmer artifact.
