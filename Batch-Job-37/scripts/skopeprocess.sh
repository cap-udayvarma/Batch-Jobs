#!/bin/bash

# Source and destination file paths
source_file1="/home/udayvarma/Batch-jobs/Batch-Job-37/Mainframe/SKOPE_adj.txt"
source_file2="/home/udayvarma/Batch-jobs/Batch-Job-37/Mainframe/SKOPE_error.txt"
source_file3="/home/udayvarma/Batch-jobs/Batch-Job-37/Mainframe/SKOPE_pmaint.txt"
source_file4="/home/udayvarma/Batch-jobs/Batch-Job-37/Mainframe/SKOPE_poll.txt"
destination_folder="/home/udayvarma/Batch-jobs/Batch-Job-37/destination/"

# Check if the source file exists
if [ -f "$source_file" ]; then
    # Copy the file to the destination folder
    cp "$source_file1" "$destination_folder"
    cp "$source_file2" "$destination_folder"
    cp "$source_file3" "$destination_folder"
    cp "$source_file4" "$destination_folder"
    echo "File copied successfully!"
else
    echo "Source file not found."
fi
