#!/bin/bash

if [[ "$#" != 1 ]] || ! [[ "$1" =~ ^[0-9]+$ ]] || [[ "$1" < 1 ]] || [[ "$1" > 5 ]]  
    then
        echo "Error"
        exit 0
fi

POS="$1"
COLORS=(red blue green white black)

echo "${COLORS[$(( $POS - 1 ))]}"