#!/usr/bin/env bash
set -euo pipefail

BASE_URL="http://209.38.92.205:33055"
ZIP_NAME="case_artifacts_akili_wkstn007.zip"

curl -sS --max-time 20 -o "$ZIP_NAME" "$BASE_URL/download/case-artifacts"
unzip -o "$ZIP_NAME" >/dev/null

# NTUSER_extract.reg is UTF-16LE; use strings -el to decode printable text.
FLAG="$(strings -el NTUSER_extract.reg | sed -n 's/^"License"="\(GoH{[^"]*}\)"$/\1/p')"

if [[ -z "$FLAG" ]]; then
  echo "Flag not found"
  exit 1
fi

echo "$FLAG"
