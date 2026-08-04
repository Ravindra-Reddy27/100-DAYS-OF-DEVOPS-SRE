#!/bin/bash
#########################################################################
# Author : Ravindra Reddy
# Date   : 04/08/2026
#
# This script check the disk uasge and send the alert if the disk usage is more than 80%.
# Version : V1
#########################################################################

set -e # Exit the script when there is an error.

echo "Checking the driver usage.."

disk_usage=$(df -h | grep /usr/lib/wsl/drivers | awk '{print $5}' | cut -d'%' -f1) 
# df -h is used to check the disk usage in human readable format.
# grep is used to filter the output with specific string.
# awk is used to print the specific column from the output.
# cut is used to remove the % sign from the output.

echo "Disk current usage is: $disk_usage%"

if [ ""$disk_usage -gt 80 ]; then
    echo "Disk usage is more than 80%."
else
    echo "Enought space is availabe."
fi