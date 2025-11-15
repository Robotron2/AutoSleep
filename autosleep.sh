#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: autosleep <minutes>"
  exit 1
fi

minutes=$1
seconds=$((minutes * 60))

echo "System will sleep in $minutes minute(s)..."
echo "Press Ctrl+C to cancel."

# Countdown
while [ $seconds -gt 0 ]; do
  echo -ne "⏳ Sleeping in $seconds seconds...   \r"
  sleep 1
  seconds=$((seconds - 1))
done

echo -e "\n💤 Time's up! Going to sleep..."
systemctl suspend -i

