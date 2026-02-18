#!/bin/sh
truncate -s 1000 file1.txt
chmod 600 file1.txt
touch -d "2022-01-01 00:00:00" file1.txt