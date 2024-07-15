#!/usr/bin/bash

# Step 1: Check if exactly two arguments are provided
echo
echo "Step 1"
echo "Checking if exactly two arguments are provided..."
if [ $# -ne 2 ]; then
    echo "Usage: $0 <first_number> <second_number>"
    exit 1
fi

# Step 2: Check if the second argument is greater than the first argument
echo
echo "Step 2"
echo "Checking if the second argument is greater than the first argument..."
if [ "$2" -gt "$1" ]; then
    # Step 3: Loop from the first number to the second number and print the numbers
    echo
    echo "Step 3"
    echo "Looping from $1 to $2 and printing the numbers..."
    for ((i=$1; i<= $2; i++)); do
        echo -n "${i}, "
    done
    echo  # Print a newline at the end
else
    # Step 4: Print an error message if the first argument is greater than the second argument
    echo
    echo "Step 4"
    echo "Error: The first argument cannot be greater than the second argument."
fi
