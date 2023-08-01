#!/bin/bash

# Source file path
source_file="/home/udayvarma/Batch-jobs/Group1BatchJob_17/source/XFER/fdbin/NDDF_PLUS_UPD.zip"

# Destination file path
destination_file="/home/udayvarma/Batch-jobs/Group1BatchJob_17/destination/eprndata/rxnorm/delta"

# Move the file using the 'mv' command
mv "$source_file" "$destination_file"
