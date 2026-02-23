#!/usr/bin/env bash

SECRET="$1"
if [ $# -ne 1 ] || ! [[ "$SECRET" =~ ^[0-9]+$ ]] || [ "$SECRET" -lt 1 ] || [ "$SECRET" -gt 100 ]; then
  echo "Error: wrong argument" >&2; exit 1
fi

for (( tries=5; tries>0; tries-- )); do
  while true; do
    echo "Enter your guess ($tries tries left):"   # ← stdout now
    read guess
    [[ "$guess" =~ ^[0-9]+$ ]] && break
  done

  if [ "$guess" -gt "$SECRET" ]; then
    echo "Go down"
  elif [ "$guess" -lt "$SECRET" ]; then
    echo "Go up"
  else
    echo "Congratulations, you found the number in $((6-tries)) moves!"
    exit 0
  fi
done

echo "You lost, the number was $SECRET"
