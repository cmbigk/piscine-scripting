#!/bin/bash

max=0

for i in {1..10}
do
    read -p "Enter a number: " input

    # Check if input is a valid positive integer
    if [[ ! "$input" =~ ^[0-9]+$ ]]; then
        echo "ERROR: Invalid input only positive numerical characters are allowed"
        exit 1
    fi

    # Check if input exceeds the maximum limit
    if [ "$input" -gt 10000 ]; then
        echo "ERROR: The number entered is too large"
        exit 1
    fi

    # Update the largest number found so far
    if [ "$input" -gt "$max" ]; then
        max=$input
    fi
done

echo "The largest number is: $max"