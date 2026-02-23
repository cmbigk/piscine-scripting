#!/usr/bin/env bash

# Validate exactly 2 args
if [ $# -ne 2 ]; then
  echo "Error: expect 2 arguments" >&2
  exit 1
fi

FLAG="$1"
USERNAME="$2"

# Validate flag
if [[ "$FLAG" != "-e" && "$FLAG" != "-i" ]]; then
  echo "Error: unknown flag" >&2
  exit 1
fi

# Get user info from passwd database
INFO=$(getent passwd "$USERNAME")

case "$FLAG" in
  "-e")
    if [[ -n "$INFO" ]]; then
      echo "yes"
    else
      echo "no"
    fi
    ;;
  "-i")
    if [[ -n "$INFO" ]]; then
      echo "$INFO"
    fi
    ;;
esac



#!/bin/bash

#if [ $# != 2 ]; then
	>&2 echo "Error: expect 2 arguments"
	exit 1
#elif [[ $1 == "-e" ]]; then
    if id "$2" &>/dev/null; then
        echo yes
    else
        echo no
    fi
#elif [[ $1 == "-i" ]]; then
    id "$2"
#else
	>&2 echo "Error: unknown flag"
	exit 1
#fi