#!/bin/bash

# Set the sender's email address
sender_email="bamit9342@gmail.com"

# Set the subject of the email
subject="Notification: Relationship Expiry"

# Set the email body
body="Dear recipient,\n\nThis is a notification to inform you that the relationship will expire in the next 30 days.\n\nBest regards,\nThe Notification System"

# Set the email addresses to send notifications to
email_addresses=("bamit9342@gmail.com")

# Loop through the email addresses and send the email to each recipient
for email in "${email_addresses[@]}"; do
  echo -e "$body" | mail -s "$subject" -r "$sender_email" "$email"
done
