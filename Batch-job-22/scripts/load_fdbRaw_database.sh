#!/bin/bash

# Specify the paths and filenames
zip_file="/home/udayvarma/Batch-jobs/Batch-job-22/source/MKF44UPD.zip"
unzip_dir="/home/udayvarma/Batch-jobs/Batch-job-22/destination/"
sql_file="/home/udayvarma/Batch-jobs/Batch-job-22/destination/MKF44UPD/file.sql"
database_name="sample1"
database_user="root"
database_password="uday"

# Unzip the file
unzip "$zip_file" -d "$unzip_dir"

# Run the SQL file in the database
mysql -u "$database_user" -p"$database_password" "$database_name" < "$sql_file"
