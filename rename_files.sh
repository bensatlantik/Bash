#!/bin/bash

# Directory to process (you can change this to any directory)
DIRECTORY="/home/ben/Bash"

# Loop through all .txt files in the directory
for FILE in "$DIRECTORY"/*.txt; do
    # Check if the file exists
    if [ -f "$FILE" ]; then
        # Get the base name of the file (without the directory path)
        BASENAME=$(basename "$FILE")
        # Get the current timestamp
        TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
        # New file name with timestamp
        NEW_FILENAME="${DIRECTORY}/${TIMESTAMP}_${BASENAME}"
        # Rename the file
        mv "$FILE" "$NEW_FILENAME"
        echo "Renamed $FILE to $NEW_FILENAME"
    fi
done

echo "All files have been renamed."
