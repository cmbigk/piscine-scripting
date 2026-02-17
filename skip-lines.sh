#!/bin/bash

#-n = suppress automatic printing (only print when we say p)
# = print current line (line 1)
#; = command separator
#n = read next line into buffer (line 2) without printing
#Repeat: p prints line 3, n skips line 4, etc.


ls -l | sed -n 'n;p'
