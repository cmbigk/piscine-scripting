#!/bin/bash

# 1 argument, positive integer
if [ "$#" -ne 1 ] || ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

num_students=$1
declare -a students
declare -a grades

for ((i=1; i<=num_students; i++)); do
    read -r -p "Student Name #$i: " student
    read -r -p "Student Grade #$i: " grade

    # Positive integer 0-100
    if ! [[ $grade =~ ^[0-9]+$ ]] || [[ $grade -lt 0 ]] || [[ $grade -gt 100 ]]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    fi

    students+=("$student")
    grades+=("$grade")
done

for i in "${!students[@]}"; do 
    s=${students[$i]}
    g=${grades[$i]}

    if (( g >= 90 )); then
        printf "%s: You did an excellent job!\n" "$s"
    elif (( g >= 70 )); then
        printf "%s: You did a good job!\n" "$s"
    elif (( g >= 50 )); then
        printf "%s: You need a bit more effort!\n" "$s"
    else
        printf "%s: You had a poor performance!\n" "$s"
    fi
done