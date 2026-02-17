#!/bin/bash
# List files in hard-perm folder with custom format:
# permissions date time filename

# ls -l                        : long listing format
# --time-style='+%F %R'        : custom date/time format
#   %F                         : full ISO date (YYYY-MM-DD)
#   %R                         : 24-hour time (HH:MM)
# hard-perm                    : target directory
# | sed '1d'                   : pipe to sed, delete first line (total)
# | awk '{print $1, $6, $7, $8}' : print columns 1 (perms), 6 (date), 7 (time), 8 (name)
#!/bin/bash

ls -l --time-style='+%F %R' hard-perm | sed '1d' | awk '{print $1, $6, $7, $8}'
