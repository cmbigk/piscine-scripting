#!/bin/bash

doAdd(){
    echo $(( $1 + $2 ))
}
doSub(){
    echo $(( $1 - $2 ))
}
doMult(){
    echo $(( $1 * $2 ))
}
doDiv(){
    echo $(( $1 / $2 ))
}

NUM1="$1"
OP="$2"
NUM2="$3"

if [ $# -ne 3 ]; then
echo "Error: expect 3 arguments" >&2
exit 1
fi

if ! [[ "$NUM1" =~ ^-?[0-9]+$ ]] || ! [[ "$NUM2" =~ ^-?[0-9]+$ ]]; then
echo "Error: invalid number" >&2
exit 4
fi

if [ "$OP" = "/" ] && [ "$NUM2" -eq 0 ]; then
echo "Error: division by 0" >&2
exit 2
fi

case "$OP" in
  "+") RESULT=$(doAdd "$NUM1" "$NUM2") ;;
  "-") RESULT=$(doSub "$NUM1" "$NUM2") ;;
  "*") RESULT=$(doMult "$NUM1" "$NUM2") ;;
  "/") RESULT=$(doDiv "$NUM1" "$NUM2") ;;
  *) echo "Error: invalid operator" >&2; exit 3 ;;
esac

echo "$RESULT"