#!/bin/bash
#########################################################################
# Author : Ravindra Reddy
# Date   : 05/08/2026
#
# This script performs log rotation for log files in a user-specified
# path that have not been modified for more than 30 days.
#
# Version : V1
#########################################################################

set -e # Exit the script when there is an error.

read -p "Enter the path: " path

echo "Searching log files in $path..."

echo "Log files are : "

find "$path" -type f -name "*.log" -mtime +30 -print -delete
# find is used to search the files and folders in the specified path
# -type f - Regular file
# -name "*.log" - All log files
# -mtime +30 - More than 30 days not modified files
# -print - Display the file names
# -delete - Delete the files
# Find the log files that are more than 30 days not modified and display in the terminal and delete them.

if [ "$?" -eq 0 ]; then
    echo "Log files are deleted successfully."
else
    echo "Deleting has some issue"
fi
