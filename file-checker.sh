#!/bin/bash

# Look for argument
if [ $# -ne 1 ]; then
	echo "Error: No file provided"
	exit 0
fi

# Check if file exists
if [ ! -e "$1" ]; then
	echo "File does not exist"
	exit 0
else
	echo "File exists"
fi

# Different permissions
if [ -r "$1" ]; then
	echo "File is readable"
else
	echo "File is not readable"
fi

if [ -w "$1" ]; then
	echo "File is writable"
else
	echo "File is not writable"
fi

if [ -x "$1" ]; then
	echo "File is executable"
else
	echo "File is not executable"
fi