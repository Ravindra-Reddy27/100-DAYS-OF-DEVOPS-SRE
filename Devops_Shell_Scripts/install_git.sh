#!/bin/bash
#########################################################################
# Author : Ravindra Reddy
# Date   : 04/08/2026
#
# This script installs Git on multiple Linux distributions.
# Version : V1
##########################################################################

set -e # Exit the script when there is an error.

echo "Script to install Git on multiple Linux distributions."

source /etc/os-release # source command is used to read the content of the file and make the variables available in the current shell.

echo "Detected Distribution: $PRETTY_NAME"
echo "Installing git in the $ID distribution."

if [ "$ID" = "ubuntu" ] || [ "$ID" = "debian" ]; then
    sudo apt update
    sudo apt install -y git

elif [ "$ID" = "fedora" ] || [ "$ID" = "amzn" ]; then
    sudo dnf install -y git

elif [ "$ID" = "centos" ]; then
    sudo yum install -y git

else
    echo "Unsupported distribution: $PRETTY_NAME"
    exit 1 # Exit the script it is general failue/error.
fi

echo "Git installation completed successfully."