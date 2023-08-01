#!/bin/bash

# Directory where the files are located
DIRECTORY="/home/udayvarma/Batch-jobs/Group1BatchJob_65/source/";

# Find files older than 30 days and delete them
find "$DIRECTORY" -type f -mtime +15 -exec rm {} \;