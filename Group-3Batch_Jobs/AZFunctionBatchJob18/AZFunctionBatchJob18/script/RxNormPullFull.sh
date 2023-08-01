#!/bin/bash
# Source file path
source_file="/mnt/c/Test-SB/Kroger/shellScript_20723/Jobs_workspace/BatchJob18/source/RxNormPullFull.zip"
# Destination file path
destination_file="/mnt/c/Test-SB/Kroger/shellScript_20723/Jobs_workspace/BatchJob18/destination/"
# Move the file using the 'mv' command
mv "$source_file" "$destination_file"
echo "Successfully Pull and deleted from source"