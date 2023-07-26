#!/bin/bash
# Store source and destination paths
source_file="Batch-Jobs/Batch-Job-46/source/MTMload.txt"
destination_file="Batch-Jobs/Batch-Job-46/completed/"
# Move the file
mv "$source_file" "$destination_file"
echo "File moved successfully from '$source_file' to '$destination_file'."
