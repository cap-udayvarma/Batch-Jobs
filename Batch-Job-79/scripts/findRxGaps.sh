#!/bin/bash

# MySQL database credentials
DB_USER="root"
DB_PASSWORD="uday"
DB_NAME="job79"

# Tables to check for duplicates
TABLE1="table1"
TABLE2="table2"

# Temporary table name for storing duplicates
TMP_TABLE="temp_duplicates"

# Connect to MySQL and find duplicates
mysql -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" <<EOF
-- Create temporary table to store duplicate records
DELETE FROM $TABLE1
WHERE rx_number IN (
    SELECT rx_number
    FROM $TABLE2
);

EOF

echo "Duplicate records have been eliminated."