#!/usr/bin/env bash

TARGET="http://lonely-island.picoctf.net:52732/"

while true; do
    echo "[*] Rotating Tor circuit..."

    killall -HUP tor >/dev/null 2>&1
    sleep 5

    ip=$(curl -s --socks5-hostname 127.0.0.1:9050 https://icanhazip.com | tr -d '\n')

    country=$(curl -s "https://ipwho.is/$ip" | python3 -c '
import sys, json
data=json.load(sys.stdin)
print(data.get("country_code",""))
')

    echo "[*] Exit IP: $ip  Country: $country"

    if [ "$country" = "IS" ]; then
        echo "[+] Iceland exit found!"
        break
    fi
done

echo "[*] Requesting challenge..."
curl -v --socks5-hostname 127.0.0.1:9050 "$TARGET"
