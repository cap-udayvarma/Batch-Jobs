#!/bin/bash

# Specify the paths and filenames
zip_file1="/mnt/c/Users/upandeti/Desktop/batch job/Batch-job-21/source/FDB_vendor_under_TREXONE.zip"
unzip_dir1="/mnt/c/Users/upandeti/Desktop/batch job/Batch-job-21/destination/"

zip_file2="/mnt/c/Users/upandeti/Desktop/batch job/Batch-job-21/source/NDDF_PLUS_DB.zip"
unzip_dir2="/mnt/c/Users/upandeti/Desktop/batch job/Batch-job-21/destination/"





# Unzip the file
unzip "$zip_file1" -d "$unzip_dir1"
unzip "$zip_file2" -d "$unzip_dir2"

DB_HOST="localhost"
DB_USER="root"
DB_PASS="uday"
DB_NAME="job15"

sql_file1="/mnt/c/Users/upandeti/Desktop/batch job/Batch-job-21/destination/FDB_vendor_under_TREXONE/sample.sql"

# Run the SQL file in the database
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE1" 

DB_HOST="localhost"
DB_USER="root"
DB_PASS="uday"
DB_NAME="job15"

sql_file2="/mnt/c/Users/upandeti/Desktop/batch job/Batch-job-21/destination/NDDF_PLUS_DB/drug.sql"

mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE2"


