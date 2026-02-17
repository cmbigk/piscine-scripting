#!/bin/bash
# Find files/folders starting with 'a' OR regular files ending with 'z'

find . \( -name "a*" -o -type f -name "*z" \)
