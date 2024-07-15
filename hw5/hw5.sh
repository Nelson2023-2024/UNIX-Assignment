#!/bin/bash

# Function to rename files
rename_files() {
    local base_name=$1 # Assign the first argument to the variable base_name
    local extension=$2 # Assign the second argument to the variable extension
    local count=1      # Initialize a counter to 1

    echo "Step 2"
    echo "Get the directory part of the base_name and file base name part (without the directory)"
    echo
    # Get the directory part of the base_name
    local dir=$(dirname "$base_name")
    # Get the file base name part (without the directory)
    local file_base=$(basename "$base_name")

    echo "Step 3"
    echo "Loop over all files with the given extension in the specified directory"
    echo
    for file in "$dir"/*."$extension"; do # Loop over all files with the given extension in the specified directory
        echo "Step 4"
        echo "Check if it's a regular file and Generate the new name with a three-digit number"
        echo
        if [[ -f "$file" ]]; then # Check if it's a regular file
            # Generate the new name with a three-digit number
            new_name=$(printf "%s/%s%03d.%s" "$dir" "$file_base" "$count" "$extension")
            while [[ -f "$new_name" ]]; do                                                  # Check if the new name already exists
                ((count++))                                                                 # Increment the counter
                new_name=$(printf "%s/%s%03d.%s" "$dir" "$file_base" "$count" "$extension") # Generate a new name
            done

            echo "Step 5"
            echo Rename the file and Increment the counter for the next file
            echo
            mv "$file" "$new_name" # Rename the file
            ((count++))            # Increment the counter for the next file
        fi
    done
    echo "Step 6"
    echo Print a success message
    echo "Renamed files to format: ${base_name}###.${extension}" # Print a success message
}

echo "step 1"
echo "Check if the number of arguments is not equal to 2"
# Main script logic
if [[ $# -ne 2 ]]; then                  # Check if the number of arguments is not equal to 2
    echo "Usage: $0 base_name extension" # Print a usage message
    exit 1                               # Exit the script with a status of 1 (error)
fi

base_name=$1                           # Assign the first argument to base_name
extension=$2                           # Assign the second argument to extension
rename_files "$base_name" "$extension" # Call the function with the specified base name and extension
