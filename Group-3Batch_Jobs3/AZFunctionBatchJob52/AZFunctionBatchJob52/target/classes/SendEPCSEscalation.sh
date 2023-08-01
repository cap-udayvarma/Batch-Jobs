#!/bin/bash

# Source directory where the reports are located
source_dir="/mnt/c/Test-SB/Kroger/BatchJobs/workspaceJob/BatchJob52/source/"

# Check if there are pending reports
if [ "$(find "$source_dir" -maxdepth 1 -type f -name "*.csv" | wc -l)" -gt 0 ]; then
    # Compose the email message
    echo "Dear Audit Report Reviewer, This is a Escalation to inform you that there are still pending audit reports for review .Please take appropriate action to review the pending reports at your earliest convenience."
    #echo "Dear Audit Report Reviewer, Please review."
else
    echo "Audit Report Reviewd."
fi