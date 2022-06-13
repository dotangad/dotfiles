#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Use Speakers
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🔈
# @raycast.needsConfirmation false

# Documentation:
# @raycast.description Switch audio output to speakers
# @raycast.author Angad Singh
# @raycast.authorURL https://github.com/dotangad

SwitchAudioSource -s $(SwitchAudioSource -a | sort | uniq | grep Speakers | head -n 1)
echo "Using MacBook Speakers"

