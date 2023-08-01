#!/bin/bash

# Specify the source folder
source_folder="/home/udayvarma/Batch-jobs/Group1BatchJob_35/source"

# Specify the destination folder
destination_folder="/home/udayvarma/Batch-jobs/Group1BatchJob_35/destination/"

# Specify the base file name
base_name="peyton"

# Get a list of files with the base name and numbers appended
files=$(ls "${source_folder}/${base_name}"[0-9]* 2>/dev/null)

 

# Check if any files are found
if [ -z "$files" ]; then

    echo "No files found with the name ${base_name}[0-9]* in ${source_folder}"

else

    # Loop through each file and perform the desired operation (e.g., copy)
    for file in $files; do

        # Extract the file name from the full path

        #file_name=$(basename "$file")

        file_number="${file#${base_name}}"

        file_number="${file_number%.*}"  # Remove file extension if present

        echo "Done2"

        # Copy the file to the destination folder

        mv "$file" "${destination_folder}/${file_name}"

    done

    

    echo "Files copied successfully to ${destination_folder}!"

fi