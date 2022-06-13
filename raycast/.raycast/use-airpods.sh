#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Use AirPods
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🎧
# @raycast.needsConfirmation false

# Documentation:
# @raycast.description Connect to AirPods and switch source to them
# @raycast.author Angad Singh
# @raycast.authorURL https://github.com/dotangad

if ! command -v SwitchAudioSource &> /dev/null; then
  echo "SwitchAudioSource has to be installed (https://github.com/deweller/switchaudio-osx)";
  exit 1;
fi

BluetoothConnector --connect "b8-81-fa-96-3d-d6"
echo $(SwitchAudioSource -n)

