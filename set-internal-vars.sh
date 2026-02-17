#!/bin/bash

MY_MESSAGE="Hello World"
MY_NUM=100
MY_PI=3.142
MY_ARR="one, two, three, four, five"

printf "%s\n%s\n%s\n%s\n" "$MY_MESSAGE" "$MY_NUM" "$MY_PI" "$MY_ARR"


#"%s\n%s\n%s\n%s\n"
  │   │   │   │
  │   │   │   └── %s = 4th argument (MY_ARR)
  │   │   │       \n = newline after it
  │   │   └────── %s = 3rd argument (MY_PI)
  │   │           \n = newline after it
  │   └────────── %s = 2nd argument (MY_NUM)
  │               \n = newline after it
  └────────────── %s = 1st argument (MY_MESSAGE)
                  \n = newline after it

