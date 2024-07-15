#!/usr/bin/bash

echo -e "Enter a list of numbers \c"
read -a numbers

sum=0

for item in "${numbers[@]}"; do
    sum=$((sum + item))
    #echo $sum
done
echo "The sum of ${numbers[*]} is :$sum"
#echo "${numbers[0]} ${numbers[1]} ${numbers[2]}"