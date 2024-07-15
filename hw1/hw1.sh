#!/usr/bin/bash

# Step 1: Check if the file exists and is a regular file
echo
echo "Step 1"
if [[ -f $1 ]]; then
    echo "File $1 exists and it's a regular file."
else
    echo "File $1 doesn't exist or it's not a regular file." 
fi

# Step 2: Check for read permission
echo
echo "Step 2"
if [[ -r $1 ]]; then
    echo "File $1 has read permission."
else
    echo "File $1 doesn't have read permission."
fi

# Step 3: Check for write permission
echo
echo "Step 3"
if [[ -w $1 ]]; then
    echo "File $1 has write permission."
else
    echo "File $1 doesn't have write permission."
fi

# Step 4: Check for execute permission
echo
echo "Step 4"
if [[ -x $1 ]]; then
    echo "File $1 has execute permission."
else
    echo "File $1 doesn't have execute permission."
fi

# Step 5: Check if it's a directory
echo
echo "Step 5"
if [[ -d $1 ]]; then
    echo "Directory $1 exists."
else
    echo "Directory $1 doesn't exist or it's not a directory."
fi
