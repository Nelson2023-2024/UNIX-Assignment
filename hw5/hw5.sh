#!/bin/bash

# Function to rename files
rename_files() {
    local base_name=$1  # Assign the first argument to the variable base_name
    local extension=$2  # Assign the second argument to the variable extension
    local count=1  # Initialize a counter to 1

    # Step 1: Get the directory part of the base_name
    echo
    echo "Step 1"
    local dir=$(dirname "$base_name")
    echo "Directory part: $dir"

    # Step 2: Get the file base name part (without the directory)
    echo
    echo "Step 2"
    local file_base=$(basename "$base_name")
    echo "File base name part: $file_base"

    # Step 3: Loop over all files with the given extension in the specified directory
    echo
    echo "Step 3"
    for file in "$dir"/*."$extension"; do  
        # Step 4: Check if it's a regular file
        echo
        echo "Step 4"
        if [[ -f "$file" ]]; then  
            # Step 5: Generate the new name with a three-digit number
            echo
            echo "Step 5"
            new_name=$(printf "%s/%s%03d.%s" "$dir" "$file_base" "$count" "$extension")
            echo "Generated new name: $new_name"

            # Step 6: Check if the new name already exists
            echo
            echo "Step 6"
            while [[ -f "$new_name" ]]; do  
                echo "New name $new_name already exists. Incrementing counter."
                ((count++))  # Increment the counter
                new_name=$(printf "%s/%s%03d.%s" "$dir" "$file_base" "$count" "$extension")  # Generate a new name
                echo "Generated new name: $new_name"
            done

            # Step 7: Rename the file
            echo
            echo "Step 7"
            mv "$file" "$new_name"  
            echo "Renamed $file to $new_name"

            ((count++))  # Increment the counter for the next file
        fi
    done

    # Step 8: Print a success message
    echo
    echo "Step 8"
    echo "Renamed files to format: ${base_name}###.${extension}"  
}

# Main script logic
# Step 0: Check if the number of arguments is not equal to 2
echo
echo "Step 0"
if [[ $# -ne 2 ]]; then  
    echo "Usage: $0 base_name extension"  # Print a usage message
    exit 1  # Exit the script with a status of 1 (error)
fi

# Step 9: Assign the first argument to base_name
echo
echo "Step 9"
base_name=$1  
echo "Base name: $base_name"

# Step 10: Assign the second argument to extension
echo
echo "Step 10"
extension=$2  
echo "Extension: $extension"

# Step 11: Call the function with the specified base name and extension
echo
echo "Step 11"
rename_files "$base_name" "$extension"  
