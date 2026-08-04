#!/bin/bash
#########################################################################
# Author : Ravindra Reddy
# Date   : 04/08/2026
#
# This script print the top 5 large files in the system
# Version : V1
#########################################################################

set -e # Exit the script when there is an error.

echo "Checking the driver usage.."

files=$`du -h | sort -hr | head -5`
# du -h is used to show how much space take by a file or folder
# sort -hr is used to sort the content in human-readable format in reverse order.
# head -5 is used to print first five row of the content/file.

echo "Large files in the system: "
echo "$files"
