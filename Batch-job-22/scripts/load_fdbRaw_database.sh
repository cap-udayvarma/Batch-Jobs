#!/bin/bash

# Specify the paths and filenames
zip_file="/home/udayvarma/Batch-jobs/Batch-job-22/source/MKF44UPD.zip"
unzip_dir="/home/udayvarma/Batch-jobs/Batch-job-22/destination/"
sql_file="/home/udayvarma/Batch-jobs/Batch-job-22/destination/MKF44UPD/file.sql"
DB_HOST="batchjobmysql.mysql.database.azure.com"
DB_USER="udayvarma"
DB_PASS="@Capgemini"
DB_NAME="job22"

# Unzip the file
unzip "$zip_file" -d "$unzip_dir"

# Run the SQL file in the database
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$sql_file"
