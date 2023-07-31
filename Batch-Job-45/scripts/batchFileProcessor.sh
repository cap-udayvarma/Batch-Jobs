#!/bin/bash

# Database store connection details
db_host="batchjobmysql.mysql.database.azure.com"
db_user="udayvarma"
db_password="@Capgemini"
db_store="job45"


# CSV file path and name
csv_file="/home/udayvarma/Batch-jobs/Batch-Job-45/files/product_cost.csv"

# Database table name
store_table_name="EPRN"


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