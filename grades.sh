#!/usr/bin/env bash

# Validate exactly 1 argument
if [ $# -ne 1 ]; then
  echo "Error: expect 1 argument only!" >&2
  exit 1
fi

N="$1"

# Validate N is a number
if ! [[ "$N" =~ ^[0-9]+$ ]]; then
  echo "Error: expect 1 argument only!" >&2
  exit 1
fi

declare -a names
declare -a grades

# Collect all student data first
for (( i=1; i<=N; i++ )); do
  echo "Student Name #$i:"
  read name
  echo "Student Grade #$i:"
  read grade

  # Validate grade
  if ! [[ "$grade" =~ ^[0-9]+$ ]] || [ "$grade" -gt 100 ]; then
    echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
    exit 1
  fi

  names+=("$name")
  grades+=("$grade")
done

# Print results
for (( i=0; i<N; i++ )); do
  name="${names[$i]}"
  grade="${grades[$i]}"

  if [ "$grade" -le 40 ]; then
    msg="You had a poor performance!"
  elif [ "$grade" -le 60 ]; then
    msg="You need a bit more effort!"
  elif [ "$grade" -le 80 ]; then
    msg="You did a good job!"
  else
    msg="You did an excellent job!"
  fi

  echo "$name: $msg"
done
