#!/bin/bash

# Change these variables according to your needs
recipient_email="amit.bats@capgemini.com"
subject="Notification: Event Reminder"
message="Your event is coming up in 30 days!"

# Calculate the date 30 days from now
target_date=2023-09-02

# Check if it's time to send the notification
current_date=2023-08-03
if [ "$current_date" = "$target_date" ]; then
    # Send the notification email
    echo "$message" | mail -s "$subject" "$recipient_email"
    echo "No notification needed for today."
else
    echo " Email sent successfully"
fi    