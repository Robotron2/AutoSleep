#!/bin/bash

# Usage: ./autosleep.sh <minutes>
# Example: ./autosleep.sh 30   --> sleep after 30 minutes

if [ -z "$1" ]; then
  echo "Usage: $0 <minutes>"
  exit 1
fi

MINUTES=$1
SECONDS=$((MINUTES * 60))

echo "System will go to sleep in $MINUTES minute(s)..."
sleep $SECONDS
systemctl suspend
