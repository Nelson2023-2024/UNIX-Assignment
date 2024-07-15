#!/usr/bin/bash

# Step 1: Prompt the user to enter a list of numbers
echo
echo "Step 1"
echo -e "Enter a list of numbers \c"

# Step 2: Read the list of numbers into an array
echo
echo "Step 2"
read -a numbers
echo "You entered: ${numbers[*]}"

# Step 3: Initialize a sum variable to 0
echo
echo "Step 3"
sum=0
echo "Initialized sum to $sum"

# Step 4: Loop through each item in the array
echo
echo "Step 4"
for item in "${numbers[@]}"; do
    # Step 5: Add each item to the sum
    echo
    echo "Step 5"
    echo "Adding $item to sum $sum"
    sum=$((sum + item))
    echo "Updated sum: $sum"
done

# Step 6: Print the total sum
echo
echo "Step 6"
echo "The sum of ${numbers[*]} is : $sum"
