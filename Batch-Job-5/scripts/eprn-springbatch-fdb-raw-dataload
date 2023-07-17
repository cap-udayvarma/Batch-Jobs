#!/bin/bash

# MySQL database credentials
DB_USER="root"
DB_PASSWORD="uday"
DB_NAME="job5"
sql_file="/home/udayvarma/Batch-jobs/Batch-Job-5/eprn/batch/eprn-springbatch-fdb-raw-dataload/FdbRawBatchUpdate.sql"

# Connect to MySQL and find duplicates
mysql -u "$DB_USER" -p "$DB_PASSWORD" "$DB_NAME" < "$sql_file""


tar -czvf /home/udayvarma/Batch-jobs/Batch-Job-5/var/ESPS/eprn-springbatch-fdb-raw-dataload/FdbRawBatchUpdate.tar.gz /home/udayvarma/Batch-jobs/Batch-Job-5/eprn/batch/eprn-springbatch-fdb-raw-dataload/FdbRawBatchUpdate.sql

