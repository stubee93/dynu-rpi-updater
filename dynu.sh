#!/bin/sh

if [ -z "$DYNU_USERNAME" ] || [ -z "$DYNU_PASSWORD_MD5" ] || [ -z "$DYNU_HOSTNAME" ]; then
  echo "[ERROR] DYNU_USERNAME, DYNU_PASSWORD_MD5, and DYNU_HOSTNAME must be set."
  exit 1
fi

echo "[INFO] Dynu DDNS updater started"
echo "[INFO] Updating hostname: $DYNU_HOSTNAME"
echo "[INFO] Poll interval: $POLLINTERVAL seconds"

while true; do
  RESPONSE=$(curl -s "https://${DYNU_USERNAME}:${DYNU_PASSWORD_MD5}@api.dynu.com/nic/update?hostname=${DYNU_HOSTNAME}")

  case "$RESPONSE" in
    good*)
      IP=$(echo "$RESPONSE" | awk '{print $2}')
      echo "[INFO] Public IP changed to $IP"
      ;;
    nochg*)
      # IP is the same — no log needed
      ;;
    *)
      echo "[WARNING] Unexpected Dynu response: $RESPONSE"
      ;;
  esac

  sleep "$POLLINTERVAL"
done
