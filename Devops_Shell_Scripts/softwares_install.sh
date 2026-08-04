#!/bin/bash

#########################################################################
# Author : Ravindra Reddy
# Date   : 04/08/2026
#
# This script installs sotwares on ubuntu .
# Version : V1
##########################################################################

set -e # Exit the script when there is an error.

read -p "Enter the softwares to install on ubuntu: " -a software_list # -a flag is used to read the input as an array. -p flag is used to display the prompt message.
echo "The softwares to install are: ${software_list[@]}" # @ - All elements of the array.

for sw in "${software_list[@]}"; do 
    echo "Installing $sw..."
    sudo apt install -y "$sw"
done