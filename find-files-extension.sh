#!bin/bash

# This removes the .txt suffix from each result.
find . -name "*.txt" -exec basename {} .txt \;