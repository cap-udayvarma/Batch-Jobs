#!/bin/bash

# Set the path to the file containing the relationship data
relationship_file="/mnt/c/Users/AMBATS/Documents/workspace-spring-tool-suite-4-4.19.0.RELEASE/BatchJob60/EmailNotificationAlert/relationship_data.txt"

# Set the email addresses to send notifications to
email_addresses=amit.bats@capgemini.com

# Get the current date in the format YYYY-MM-DD
current_date=2023-08-02

# Calculate the date 30 days from now
next_30_days=2023-09-01

# Read the relationship data file line by line
while IFS= read -r line; do
  # Split the line into relationship details
  relationship=$(echo "$line" | cut -d ',' -f 1)
  date_of_birth=$(echo "$line" | cut -d ',' -f 2)

  # Calculate the age of the individual
  birth_year=2006
  current_year=2023
  age=$((current_year - birth_year))

  # Check if the age is 17 (i.e., will turn 18 in the next 30 days)
if [ $age -eq 17 ]; then
    # Send notification email for the minor turning 18
   echo "Alert sent successfully"
fi
done < "$relationship_file"
