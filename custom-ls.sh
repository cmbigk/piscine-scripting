#!/bin/bash
# Script: custom-ls.sh
# Creates an alias 'custom-ls' with custom ls flags

# Define the alias
# -l : long list format (permissions, owner, size, date, name)
# -o : omit group information (show owner only)
# -a : include hidden files (starting with .)
# -s : show allocated size in blocks (first column)
# -S : sort by size, largest first (capital S!)

alias custom-ls="ls -loasS"
