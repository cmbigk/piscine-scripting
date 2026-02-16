#!/bin/bash

# Define a variable that stores the path to the file
FILE="file-researcher/facts.txt"

# Search for and print only the part of the line
# that starts with "It takes 12 honey" until the end of that line
#
# -o   → print only the matched portion (not the whole line)
# .*   → means:
#        .  = any character
#        *  = zero or more of the previous character
#        So .* = match everything (greedy match)
# $    → end of the line
#
# NOTE ABOUT .*?
# .*?  is a non-greedy (lazy) match in regex engines that support it.
#      It means:
#        .   = any character
#        *?  = match as few characters as possible
#
# However, basic grep does NOT support non-greedy matching (*?).
# For non-greedy matching, you would need:
#   grep -P   (Perl regex)
# or tools like sed/awk with extended regex support.
grep -o "It takes 12 honey.*$" "$FILE"

# Search for the word "year" in the file
# -n → show the line number where the match appears
grep -n "year" "$FILE"