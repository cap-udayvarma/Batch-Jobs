#!/bin/bash

# Path to the tar.gz file
tar_file="/mnt/c/Users/upandeti/eclipse-workspace/Batch-Job-15/source/FdbRawBat.tar"

# Destination directory to extract the contents
destination_dir="/mnt/c/Users/upandeti/eclipse-workspace/Batch-Job-15/destination/"

# Create the destination directory if it doesn't exist
#mkdir -p "$destination_dir"

# Extract the tar.gz file
tar -xzf "$tar_file" -C "$destination_dir"

# Print a success message
echo "File extracted successfully to $destination_dir"


DB_HOST="localhost"
DB_USER="root"
DB_PASS="uday"
DB_NAME="job15"

# Path to the SQL script file
SQL_FILE="/mnt/c/Users/upandeti/eclipse-workspace/FdbRawBat/chUpdate.sql"

# Execute the SQL script
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE"

echo "success last"


