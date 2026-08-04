#!/bin/bash
#########################################################################
# Author : Ravindra Reddy
# Date   : 04/08/2026
#
# This script performs (Start | Stop | Restart | Status)
# operations on a Linux service.
# Version : V1
##########################################################################

set -e

read -p "Enter the service name: " service
read -p "Enter the action (start | stop | restart | status): " action

action="${action,,}" # convert the text to lower case.

case "$action" in
    start)
        sudo systemctl start "$service"
        echo "$service started successfully."
        ;;
    stop)
        sudo systemctl stop "$service"
        echo "$service stopped successfully."
        ;;
    restart)
        sudo systemctl restart "$service"
        echo "$service restarted successfully."
        ;;
    status)
        sudo systemctl --no-pager status "$service" 
        ;;
    *)
        echo "Invalid action."
        exit 1
        ;;
esac