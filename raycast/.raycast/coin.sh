#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toss a coin
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🪙
# @raycast.needsConfirmation false

# Documentation:
# @raycast.description Toss a coin
# @raycast.author Angad Singh
# @raycast.authorURL https://github.com/dotangad

FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi
