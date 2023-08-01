#!/bin/bash

# Directory where the files are located
DIRECTORY="/mnt/c/Users/mbhalli/Desktop/Batch-Jobs_Poc/Batch-Job-58/source/"

# Find files older than 30 days and delete them
find "$DIRECTORY" -type f -mtime +15 -exec rm {} \;