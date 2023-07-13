#!/bin/bash

# Source and destination paths
source_path="/home/udayvarma/Batch-jobs/Batch-job-25/outgoing_folder/2023-02-23_Kroger_Enterprise_Prescriber_Delta_Profiles.zip"
destination_path="/home/udayvarma/Batch-jobs/Batch-job-25/eprndata/hms/folder/"

# Copy the zip file to the destination
cp "$source_path" "$destination_path"

# Optional: Verify if the file was copied successfully
if [ $? -eq 0 ]; then
  echo "File copied successfully!"
else
  echo "An error occurred while copying the file."


# Specify the source and destination paths
source_file="/home/udayvarma/Batch-jobs/Batch-job-25/XFER/lexisnexis_in/folder/YYYY-MM-DD_Kroger_Enterprise_Prescriber_Delta_Profiles.zip"
destination_path1="/home/udayvarma/Batch-jobs/Batch-job-25/eprndata/hms/folder/"

# Move the file to the destination path
mv "$source_file" "$destination_path"

# Check if the move was successful
if [ $? -eq 0 ]; then
    echo "File moved successfully."

    # Delete the file from the source
    rm "$source_file"
    
    # Check if the deletion was successful
    if [ $? -eq 0 ]; then
        echo "File deleted from source."
    else
        echo "Failed to delete file from source."
    fi
else
    echo "Failed to move the file."
fi


