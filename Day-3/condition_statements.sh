#!/bin/bash

#########################################################################
# Author : Ravindra Reddy
# Date   : 03/08/2026
#
# This script is about the conditional statements in bash scripting.
# Version : V1
##########################################################################

set -e # Exit the script when there is an error.

num1=10
num2=20
# conditional 
# If Statement - If statementis used to execute a block of code if a specific condition is true.
if [ "$num1" -gt  0 ]; then
    echo "$num1 is greater than 0"
fi

# If-Else Statement
if [ "$num1" -gt "$num2" ]; then   # -gt = >
    echo "$num1 is greater than $num2"
else
    echo "$num2 is greater than $num1"
fi  


# If-Elif-Else Statement
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater than $num2"
elif [ "$num1" -lt "$num2" ]; then  # -lt = <
    echo "$num2 is greater than $num1"
else
    echo "$num1 is equal to $num2"
fi
