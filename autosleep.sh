#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: autosleep <minutes>"
  exit 1
fi

MINUTES=$1
SECONDS=$((MINUTES * 60))

echo "System will sleep in $MINUTES minute(s)..."

# Run in background and disown from terminal
(sleep $SECONDS && systemctl suspend) &
disown

