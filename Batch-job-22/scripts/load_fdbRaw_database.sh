#!/bin/bash

# Specify the paths and filenames
zip_file="/home/udayvarma/Batch-jobs/Batch-job-21/source/file.zip"
unzip_dir="/home/udayvarma/Batch-jobs/Batch-job-21/destination/"
sql_file="/home/udayvarma/Batch-jobs/Batch-job-21/destinatin/file.sql"
database_name="sample1"
database_user="root"
database_password="uday"

# Unzip the file
unzip "$zip_file" -d "$unzip_dir"

# Run the SQL file in the database
mysql -u "$database_user" -p"$database_password" "$database_name" < "$sql_file"
