#!/bin/bash

 

# Source and destination file paths

source_file1="/home/udayvarma/Batch-jobs/BatchJob_14/source/FDBDailyPrice.txt"


destination_folder="/home/udayvarma/Batch-jobs/BatchJob_14/Destination/"

 

# Check if the source file exists

if [ -f "$source_file1" ]; then

    # Copy the file to the destination folder

    cp "$source_file1" "$destination_folder"

    echo "File updated successfully!"

else

    echo "Source file not found."

fi