#!/bin/bash

#########################################################################
# Author : Ravindra Reddy
# Date   : 03/08/2026
#
# This script is about the variables and datatypes in bash scripting.
# Version : V1
##########################################################################

set -x  # debug mode, prints the command that are being executed.
set -e # Exit the script when there is an error.

# Variables - Variables are used to store data in bash scripting. They store in string format by default
# Read user input
read -rp "Enter your name: " user_name
             # Syntax -> Variable_name=value
age=25       # Note: No spaces around the equal sign. Wrong: age = 25

#Accessing of variables
echo "My name is $user_name"  # $ sign is used to access the value of the variable.
echo "My age is $age"
echo "My name is $user_namesnow"
echo "My name is ${user_name}snow"  # Safer version of accessing variables, especially when concatenating strings.

# Data Types - Data types are used to define the type of data that a variable can hold. In bash scripting, there are three main data types: integer, float and string. Arrays are also supported in bash scripting.
# In bash everything is treated as a string by default.

# Integer
num=10
echo "Integer: "$num

# Float
float=10.3
echo "Float: "$float

# String
str="Hello"
echo "String: $str"

# Arrays
arr=(1 2 3) # Dont use like 1,2,3 other programming languages. Use space to separate the values.
echo "0 index of array: ${arr[0]}".
echo "1 index of array: ${arr[1]}"
echo "2 index of array: ${arr[2]}"


