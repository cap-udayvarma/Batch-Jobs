#!/bin/bash

# Specify the paths and filenames
zip_file1="/home/udayvarma/Batch-jobs/Batch-job-21/source/FDB_vendor_under_TREXONE.zip"
unzip_dir1="/home/udayvarma/Batch-jobs/Batch-job-21/destination/"

zip_file2="/home/udayvarma/Batch-jobs/Batch-job-21/source/NDDF_PLUS_DB.zip"
unzip_dir2="/home/udayvarma/Batch-jobs/Batch-job-21/destination/"

sql_file1="/home/udayvarma/Batch-jobs/Batch-job-21/destination/sample.sql"
sql_file2="/home/udayvarma/Batch-jobs/Batch-job-21/path/to/sql/drug.sql"

DB_HOST="localhost"
DB_USER="root"
DB_PASS="uday"
DB_NAME="job15"

# Unzip the file
unzip "$zip_file1" -d "$unzip_dir1"
unzip "$zip_file2" -d "$unzip_dir2"

# Run the SQL file in the database
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE1"

mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE2"
