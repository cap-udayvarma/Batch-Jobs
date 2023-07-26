#!/bin/bash

# Source and destination file paths
source_file="Batch-Jobs/Batch-Job-37/Mainframe"
destination_folder="Batch-Jobs/Batch-Job-37/destination/"

# Check if the source file exists
if [ -f "$source_file" ]; then
    # Copy the file to the destination folder
    cp "$source_file"/* "$destination_folder"
    echo "File copied successfully!"
else
    echo "Source file not found."
fi
