#!/bin/bash

# Database credentials
DB_HOST="batchjobmysql.mysql.database.azure.com"
DB_USER="udayvarma"
DB_PASSWORD="@Capgemini"
DB_NAME="job34"

csv_file="/home/udayvarma/Batch-jobs/Batch-Job-34/files/product_cost.csv"

# Database table name
store_table_name="store"


# Read the CSV file and insert data into the database table
mysql -h "$db_host" -u "$db_user" -p"$db_password" "$db_store" <<EOF
LOAD DATA LOCAL INFILE '$csv_file'
INTO TABLE $store_table_name
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
EOF

if [ $? -eq 0 ]; then
  echo "Data inserted into the database table successfully."
else
  echo "Error inserting data into the database table."
fi
