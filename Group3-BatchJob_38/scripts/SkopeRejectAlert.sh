#!/bin/bash
# Set the path to the SKOPE rejects file
SKOPE_REJECTS_FILE="/home/udayvarma/Batch-jobs/BatchJob_38/source/skope_rejects.txt"

# Set the email address to receive alerts
#ALERT_EMAIL="av50111@gmail.com"

# Set the threshold for the number of rejects to trigger an alert
REJECTS_THRESHOLD=10

# Check if the SKOPE rejects file exists
if [ -f "$SKOPE_REJECTS_FILE" ]; then
  # Get the number of rejects
  num_rejects=$(grep -c '^reject' "$SKOPE_REJECTS_FILE")

# Compare the number of rejects with the threshold
if [ "$num_rejects" -ge "$REJECTS_THRESHOLD" ]; then
    # Send an email alert
    #echo "Alert: SKOPE rejects exceeded the threshold of $REJECTS_THRESHOLD" | mail -s "SKOPE Rejects Alert" "$ALERT_EMAIL"
    echo "Alert: SKOPE rejects exceeded the threshold."
else
    echo "SKOPE rejects file not found."
fi 
else   
    echo "SKOPE not found."
fi     