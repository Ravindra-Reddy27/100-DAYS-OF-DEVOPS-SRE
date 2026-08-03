#!/bin/bash


##########################################
# Author : Ravindra Reddy
# Date   : 02/08/2026
#
# This script outputs  the node health
#
# Version : V1
###########################################

set -x  # debug mode
set -e # Exit the script when there is an error.
# set -o pipefail


# echo "Node Health with echo"

# echo -e "\n Node Health echo -e "

# printf "\n Node health with printf command"

free -h

df -h

nproc

ps -ef

top