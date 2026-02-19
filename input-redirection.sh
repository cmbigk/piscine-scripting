#!/bin/bash

# The goal is for the resulting file to read a heredoc
echo "cat -e <<EOF
The current directory is: \$PWD
The default paths are: \$PATH
The current user is: \$USERNAME
EOF
" > show-info.sh

