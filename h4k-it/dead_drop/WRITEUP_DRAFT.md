# Dead Drop - Network Forensics Writeup

## Challenge
- Name: Dead Drop
- Category: Network Forensics
- Points: 200
- Prompt: `What is the flag?`

## Scenario Summary
The case file (`CASE_README.txt`) states that during a scheduled maintenance window, abnormal DNS activity appeared and stopped when vendor access ended. The task is to determine what that DNS activity contained.

## Evidence Provided
- `maintenance_window_capture.pcap`
- `resolver_query.log`
- `CASE_README.txt`

## Investigation Process

### 1) Review suspicious DNS pattern
From the resolver log:

```bash
rg -n 'syn|0000|fin|tunnel\.akili-noc\.co\.tz' resolver_query.log
```

Key lines:
- `syn.b7a3f2d1.tunnel.akili-noc.co.tz IN TXT`
- `0000.redacted00xxxxxxxxxxxxxxxxxxxx.b7a3f2d1.tunnel.akili-noc.co.tz IN TXT`
- `fin.b7a3f2d1.tunnel.akili-noc.co.tz IN TXT`

This looks like DNS tunneling/exfil framing:
- `syn` = start marker
- indexed chunk label (`0000`) = payload chunk
- `fin` = end marker

### 2) Validate with packet capture
Extract matching DNS queries from the PCAP:

```bash
tshark -r maintenance_window_capture.pcap \
  -Y 'dns.flags.response==0 && dns.qry.name contains "tunnel.akili-noc.co.tz"' \
  -T fields -e frame.number -e ip.src -e dns.qry.name
```

Observed:
- `syn.b7a3f2d1.tunnel.akili-noc.co.tz`
- `0000.R29IezA4ZTFkMGJmMTliNH0AAAAAA.b7a3f2d1.tunnel.akili-noc.co.tz`
- `fin.b7a3f2d1.tunnel.akili-noc.co.tz`

Unlike the log, the PCAP includes the full payload chunk (not redacted).

### 3) Reconstruct encoded data
Pull indexed chunks, sort by index, then concatenate:

```bash
tshark -r maintenance_window_capture.pcap \
  -Y 'dns.flags.response==0 && dns.qry.name contains "tunnel.akili-noc.co.tz"' \
  -T fields -e dns.qry.name |
awk -F. '$1 ~ /^[0-9]+$/ {print $1 " " $2}' |
sort -n |
awk '{printf "%s", $2} END {print ""}'
```

Result:
```text
R29IezA4ZTFkMGJmMTliNH0AAAAAA
```

### 4) Decode and recover flag
The recovered string includes one extra trailing character, so trim to valid base64 length (multiple of 4), decode, then extract `GoH{...}`:

```bash
printf 'R29IezA4ZTFkMGJmMTliNH0AAAAA' | base64 -d | strings
```

Decoded content includes:
```text
GoH{08e1d0bf19b4}
```

## Final Flag
`GoH{08e1d0bf19b4}`

## Notes / Takeaways
- TXT DNS queries with `syn`/`fin` framing and indexed labels are strong tunneling indicators.
- Resolver logs may redact sensitive labels, but full payload can still be recovered from packet captures.
- A quick base64 sanity check (length mod 4) helps clean recovered DNS chunks before decoding.
