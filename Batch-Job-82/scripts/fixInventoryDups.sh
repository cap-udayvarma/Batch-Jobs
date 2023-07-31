#!/bin/bash

# MySQL database credentials
DB_HOST="batchjobmysql.mysql.database.azure.com"
DB_USER="udayvarma"
DB_PASS="@Capgemini"
DB_NAME="job82"

# Tables to check for duplicates
TABLE1="table1"
TABLE2="table2"

# Connect to MySQL and find duplicates
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" <<EOF
DELETE FROM $TABLE1
WHERE rx_number IN (
    SELECT rx_number
    FROM $TABLE2
);

EOF

echo "Duplicate records have been eliminated."
