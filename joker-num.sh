#!/usr/bin/env bash

SECRET="$1"

# Validate secret number
if [ $# -ne 1 ] || ! [[ "$SECRET" =~ ^[0-9]+$ ]] || [ "$SECRET" -lt 1 ] || [ "$SECRET" -gt 100 ]; then
  echo "Error: wrong argument" >&2
  exit 1
fi

# Game loop: 5 tries
for (( tries_left=5; tries_left>0; tries_left-- )); do
  
  # Get valid guess (retry on invalid)
  while true; do
    read -p "Enter your guess ($tries_left tries left): " guess
    
    # Retry if empty or not number
    if [[ -z "$guess" || ! "$guess" =~ ^[0-9]+$ ]]; then
      continue  # Don't count bad input as try
    fi
    
    # Valid guess, break inner loop
    break
  done
  
  # Check guess vs secret
  if [ "$guess" -gt "$SECRET" ]; then
    echo "Go down"
  elif [ "$guess" -lt "$SECRET" ]; then
    echo "Go up"
  else
    # Win!
    TRIES_USED=$((6 - tries_left))
    echo "Congratulations, you found the number in ${TRIES_USED} moves!"
    exit 0
  fi
done

# Lose after 5 tries
echo "You lost, the number was $SECRET"
