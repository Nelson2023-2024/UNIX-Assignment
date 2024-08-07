#!/bin/bash

# Function to remove zero-length files
remove_zero_length_files() {
    local dir=$1  # Assign the first argument to the variable dir
    
    # Step 1: Check if the directory exists
    echo
    echo "Step 1"
    echo "Check if the Directory $dir does not exist." 
    if [[ ! -d "$dir" ]]; then  # Check if the directory does not exist
        echo "Error: Directory $dir does not exist."  # Print an error message
        exit 1  # Exit the script with a status of 1 (error)
    fi

    # Step 2: Find and delete zero-length files
    echo
    echo "Step 2"
    find "$dir" -type f -size 0 -print -delete
    echo "Removed all zero-length files in directory: $dir"  # Print a success message
}

# Main script logic
directory=${1:-$(pwd)}  # Use the first argument or default to the present working directory

remove_zero_length_files "$directory"  # Call the function with the specified or default directory
