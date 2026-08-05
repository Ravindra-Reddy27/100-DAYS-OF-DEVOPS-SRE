#!/bin/bash
#########################################################################
# Author : Ravindra Reddy
# Date   : 05/08/2026
#
# This script check status of service, if inactive (dead) it restart service.
# Version : V1
#########################################################################

set -e # Exit the script when there is an error.

read -p "Enter the service:" service

echo "Checking the status of the $service :"
  
status=$(systemctl status "$service" | awk 'NR==3 {print $2}')  # simplified - systemctl is-active "$service"
# awk = It used to text-processing tool command
# NR = Number of record
# $2 = second field

if [ "$status" = "active" ]; then
    echo "$service is Running."
else
    echo "$service is Starting."
    systemctl start "$service"
fi