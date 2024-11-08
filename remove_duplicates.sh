#!/bin/bash

# Directory to search (replace with your path if necessary)
MUSIC_DIR="/home/ben/Music"

# Find duplicate file names across subdirectories
find "$MUSIC_DIR" -type f -print0 | xargs -0 basename -a | sort | uniq -d > duplicates.txt

# Process each duplicate file name
while IFS= read -r filename; do
  # Find all instances of this duplicate file name
  files=($(find "$MUSIC_DIR" -type f -name "$filename"))
  
  # If multiple instances are found, proceed to delete duplicates
  if [ "${#files[@]}" -gt 1 ]; then
    echo "Duplicate file: $filename"
    echo "Keeping: ${files[0]}"
    
    # Loop through the rest and delete them
    for ((i=1; i<${#files[@]}; i++)); do
      echo "Deleting: ${files[$i]}"
      rm -i "${files[$i]}"  # Use -i to prompt for confirmation before deletion
    done
  fi
done < duplicates.txt

# Clean up the temporary duplicates file
rm duplicates.txt
