#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Connect to Airpods
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🎧
# @raycast.needsConfirmation true

# Documentation:
# @raycast.description Connect to Airpods
# @raycast.author Angad Singh
# @raycast.authorURL https://github.com/dotangad

if ! command -v BluetoothConnector &> /dev/null; then
  echo "BluetoothConnector has to be installed (https://github.com/lapfelix/BluetoothConnector)";
  exit 1;
fi

# Run the BluetoothConnector command without arguments to see your Airpods' MAC address
BluetoothConnector --connect {YOUR_AIRPODS_MAC_ADDRESS}
echo "Airpods connected!"
