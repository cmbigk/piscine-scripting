#!/bin/bash 
FILE = "file-researcher/facts.txt"

grep -o "It takes 12 honey .*$" "$FILE"
grep -n "year" "$FILE"