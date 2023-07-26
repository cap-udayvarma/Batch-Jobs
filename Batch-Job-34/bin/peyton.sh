#!/bin/bash

# Database credentials
DB_HOST="batchjobmysql.mysql.database.azure.com"
DB_USER="udayvarma"
DB_PASSWORD="@Capgemini"
DB_NAME="job34"

# Folder to store the data dump file
DATA_DUMP_FOLDER="/path/to/your/dump_folder"

# File to store the extracted data
OUTPUT_FILE="$DATA_DUMP_FOLDER/data_dump.sql"

# Command to extract data from the database
# Note: The use of mysqldump here, assuming you're using MySQL. Modify accordingly for other databases.
mysqldump -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$OUTPUT_FILE"

# Check if the data dump file was created successfully
if [ -f "$OUTPUT_FILE" ]; then
    echo "Data extraction successful. File saved: $OUTPUT_FILE"
else
    echo "Error: Data extraction failed."
    exit 1
fi

# Destination folder to move the data dump file
DESTINATION_FOLDER="/path/to/your/destination_folder"

# Move the data dump file to the destination folder
mv "$OUTPUT_FILE" "$DESTINATION_FOLDER"

# Check if the file was moved successfully
if [ $? -eq 0 ]; then
    echo "Data dump file moved to: $DESTINATION_FOLDER"
else
    echo "Error: Failed to move the data dump file."
fi

exit 0
