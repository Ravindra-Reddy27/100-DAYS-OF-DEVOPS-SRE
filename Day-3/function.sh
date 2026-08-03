#!/bin/bash

#########################################################################
# Author : Ravindra Reddy
# Date   : 03/08/2026
#
# This script is about the functions in bash scripting.
# Version : V1
##########################################################################

set -e # Exit the script when there is an error.

# Functions - Functions is a block of code that can be reused multiple times in a script. It avoids the repetition of code.
greet_user() {
    echo "Hello, User"
}
# Calling the function
greet_user



great_user_with_parameters() {
    echo "Hello, $1"  # $1 is the first parameter passed to the function.
}
# Calling the function with parameters
great_user_with_parameters "Ravindra" 

arg(){
  echo "First arg     : $1"
  echo "Second arg    : $2"
  echo "Number of args: $#"
  echo "All arguments : $*"
  echo "Last exit code: $?"
}
# Calling the function with arguments
arg 1 2