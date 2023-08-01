#!/bin/bash

# MySQL database credentials
db_host="batchjobmysql.mysql.database.azure.com"
db_user="udayvarma"
db_password="@Capgemini"
db_name="sql_file"
sql_file="/home/udayvarma/Batch-jobs/Group1BatchJob_88/script/SQLJob88.sql"
echo "Done1"

# Connect to the MySQL server and update the date column as null
mysql -h "$db_host" -u "$db_user" -p"$db_password" "$db_name" <"$sql_file"

 
echo "Date has been updated to null in the  table of the  database."