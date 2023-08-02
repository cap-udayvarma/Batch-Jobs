#!/bin/bash
# Source file path
source_file="/home/udayvarma/Batch-jobs/BatchJob_18/source/RxNormPullFull.zip"
# Destination file path
destination_file="/home/udayvarma/Batch-jobs/BatchJob_18/destination/"
# Move the file using the 'mv' command
mv "$source_file" "$destination_file"
echo "Successfully Pull and deleted from source"