#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Switch Audio Source
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🎧
# @raycast.needsConfirmation false

# Documentation:
# @raycast.description Switch Audio Source
# @raycast.author Angad Singh
# @raycast.authorURL https://github.com/dotangad

if ! command -v SwitchAudioSource &> /dev/null; then
  echo "SwitchAudioSource has to be installed (https://github.com/deweller/switchaudio-osx)";
  exit 1;
fi

echo "Switched to $(SwitchAudioSource -n | cut -d'"' -f2)"
