#!/bin/bash
# Function to send the email
send_email() {
    echo "Email sent successfully."
}
# Get the file path for the provided date or yesterday's date
get_file_path() {
    #local input_date="$1"
    local input_date="20230721"
    echo "Given date file is: $input_date"
    if [ -z "$input_date" ]; then
        # If no date is provided, use yesterday's date
        input_date=$(date -d "yesterday" +%Y%m%d)
        echo "Recived Yesterday File"
    fi
    # Assuming your precheck files are in the 'precheck_files' directory
    local file_path="/home/udayvarma/Batch-jobs/BatchJob_41/source/precheck_${input_date}.txt"
    if [ ! -f "$file_path" ]; then
        echo "Error: The precheck file for date $input_date does not exist."
        exit 1
    fi
    echo "$file_path"
}
# Main script starts here
# Define the mailer list recipients (comma-separated emails)
#mailer_list="av50111@gmail.com,ashwinir153@yahoo.com"
# Get the input date from the command-line argument (if provided)
#input_date="$1"
# Get the file path for the input date
#file_path=$(get_file_path "$input_date")
# Send the precheck file to the mailer list
get_file_path
send_email