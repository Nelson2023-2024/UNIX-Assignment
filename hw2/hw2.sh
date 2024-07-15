#!/usr/bin/bash

#echo $1 $2
# Check if exactly two arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <first_number> <second_number>"
    exit 1
fi

if [ "$2" -gt "$1" ]; then
    for((i=$1; i<= $2;i++)); do
        echo -n "${i} , "
    done
else
    echo "First argument cannot be greater than the 2nd argument " 
fi
