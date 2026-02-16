#!/bin/bash
# Fetch JSON data from superhero API using curl
# -s flag: silent mode (no progress bar)
curl -s https://01.gritlab.ax/assets/superhero/all.json | \
  
  # Process JSON with jq
  # .[]           : iterate through each array element
  # select(.id == 1) : filter to keep only hero with id: 1
  # {name, power} : extract only name and power fields
  jq '.[] | select(.id == 1) | {name, power}' | \
  
  # Filter output to show only name and power lines
  # -E   : extended regex
  # (name|power) : match lines containing either word
  grep -E '(name|power)'

# Pipe explanation:
# curl → fetches raw JSON from URL
#   ↓
# jq → filters JSON (id==1) and extracts fields
#   ↓  
# grep → shows only name/power lines with formatting
