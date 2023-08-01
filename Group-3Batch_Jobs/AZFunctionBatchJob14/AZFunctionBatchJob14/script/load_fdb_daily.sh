#!/bin/bash
echo "Script is start"
awk -F',' '{print $0}' /home/udayvarma/Batch-jobs/Group-3Batch_Jobs/AZFunctionBatchJob14/AZFunctionBatchJob14/source/FDB_Daily_price_updates.csv
#source /mnt/c/Users/AMBATS/Desktop/Batchjob/SourceFile/FDB_Daily_price_updates.csv
echo "Script is running"
