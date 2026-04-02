#!/usr/bin/env bash
set -euo pipefail

BASE_URL="http://209.38.92.205:33056"
ZIP_NAME="nuru_maintenance_evidence.zip"
PCAP_NAME="maintenance_window_capture.pcap"

curl -sS --max-time 20 -o "$ZIP_NAME" "$BASE_URL/download/evidence"
unzip -o "$ZIP_NAME" >/dev/null

if ! command -v tshark >/dev/null 2>&1; then
  echo "tshark is required but not installed"
  exit 1
fi

ENCODED="$(
  tshark -r "$PCAP_NAME" \
    -Y 'dns.flags.response==0 && dns.qry.name contains "tunnel.akili-noc.co.tz"' \
    -T fields -e dns.qry.name |
  awk -F. '$1 ~ /^[0-9]+$/ {print $1 " " $2}' |
  sort -n |
  awk '{printf "%s", $2} END {print ""}'
)"

if [[ -z "$ENCODED" ]]; then
  echo "No encoded DNS chunks found"
  exit 1
fi

FLAG=""
for trim in 0 1 2 3; do
  CANDIDATE="$ENCODED"
  if [[ "$trim" -gt 0 ]]; then
    CANDIDATE="${ENCODED:0:${#ENCODED}-trim}"
  fi

  if (( ${#CANDIDATE} % 4 != 0 )); then
    continue
  fi

  FLAG="$(
    printf "%s" "$CANDIDATE" |
    base64 -d 2>/dev/null |
    strings |
    sed -n 's/.*\(GoH{[^}]*}\).*/\1/p' |
    head -n1
  )"

  if [[ -n "$FLAG" ]]; then
    break
  fi
done

if [[ -z "$FLAG" ]]; then
  echo "Flag not found"
  exit 1
fi

echo "$FLAG"
