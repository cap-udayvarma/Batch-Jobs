#!/bin/bash

# Source file path
source1_file="/home/udayvarma/Batch-jobs/Group1BatchJob_19/source/XFER/TEL12844 2D/11JUN2023/TEL128442 D/NDDF PLUS UPD.zip"

source2_file="/home/udayvarma/Batch-jobs/Group1BatchJob_19/source/XFER/TEL13435 7D/11JUN2023/TEL134357 D/DRUG IMAGE UPD.zip"

# Destination file path
destination_file="/home/udayvarma/Batch-jobs/Group1BatchJob_19/destination/eprndata/FDB/TEL12844 2D/11JUN2023/TEL128442 D"

# Move the file using the 'mv' command
mv "$source1_file" "$destination_file"

mv "$source2_file" "$destination_file"