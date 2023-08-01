#!/bin/bash

# Set the directory where the files are located

source_directory="/mnt/c/Test-SB/Kroger/shellJobs/BatchJob44/source/"
echo "1----"

# Set the destination directory where you want to pull the files

destination_directory="/mnt/c/Test-SB/Kroger/shellJobs/BatchJob44/destination"
echo "2----" 
# Get the current date in the format YYYYMMDD

#current_date=$(date +'%Y%m%d')

current_date=20230718
echo "3----"
# Set the filename pattern
find "$source_directory" -type f -name "mtm_patient_pro file_${current_date}_*.gpg" -exec cp {} "$destination_directory" \;
#filename_pattern="mtm_patient_pro_file_${current_date}_*.gpg"
echo "4----"
# Find the matching files in the source directory

#files=$(find "$source_directory" -type f -name "$filename_pattern")
#echo "5----  $files"
# Check if any files are found

# Copy the files to the destination directory

#cp $files "$destination_directory/"
echo "6----"
# Display the list of copied files

echo "The following files have been successfully copied to $destination_directory:"

echo "$files"