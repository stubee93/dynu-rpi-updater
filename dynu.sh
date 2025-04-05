#!/bin/sh

echo "$(date) Running Dynu IP update..."

# Validate required environment variables
if [ -z "$DYNU_USERNAME" ] || [ -z "$DYNU_PASSWORD_MD5" ]; then
  echo "ERROR: DYNU_USERNAME and DYNU_PASSWORD_MD5 environment variables must be set"
  exit 1
fi

# Perform the update using MD5-hashed password
RESPONSE=$(curl -ks "https://api.dynu.com/nic/update?username=${DYNU_USERNAME}&password=${DYNU_PASSWORD_MD5}")
echo "Dynu Response: $RESPONSE"

echo "$(date) Sleeping for $POLLINTERVAL seconds..."
