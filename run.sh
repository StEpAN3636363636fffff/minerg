#!/bin/bash

set -e
# Replace changeme with your values. Check out readme for more.
POOL="pool.hashvault.pro:80"
PORT=80
MYADDRESS="48oojZUDLwsJR4yw5bMo5jgNeEeCgsysxBMYa6B4uUke96STuCxjsNq8bXfB7dWQYu7kJdafN5iggbDYtc6oDCkb1emu8cg"
COINNAME="monero"

cd xmrig/build

# executable permissions
echo "Setting executable permissions"
if ! chmod +x xmrig; then
    echo "Error: Failed to set executable permissions"
    exit 1
fi

echo "Starting now"
./xmrig -o $POOL:$PORT -u $MYADDRESS --tls --coin $COINNAME