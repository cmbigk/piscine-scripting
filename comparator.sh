#!/bin/bash

# Check number of arguments
if [ "$#" -ne 2 ]; then
    echo "Error: The script only works with two arguments!"
    exit 0
fi

# Check they are (positive?) integers
if ! [[ $1 =~ ^-?[0-9]*\.?[0-9]+$ ]] || ! [[ $2 =~ ^-?[0-9]*\.?[0-9]+$ ]]; then
    echo "Error: Only two numeric arguments are acceptable!"
    exit 0
fi

OPERATOR="="

if [[ "$1" -gt "$2" ]]; then
    OPERATOR=">"
elif [[ "$1" -lt "$2" ]]; then
    OPERATOR="<"
fi

echo "$1 $OPERATOR $2"