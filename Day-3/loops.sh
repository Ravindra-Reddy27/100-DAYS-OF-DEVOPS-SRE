#!/bin/bash

#########################################################################
# Author : Ravindra Reddy
# Date   : 03/08/2026
#
# This script is about the loops in bash scripting.
# Version : V1
##########################################################################

set -e # Exit the script when there is an error.
# Loops 
# For loop - It runs for a specific number of times based the range provided.
echo "For Loop: "
for i in {1..5}:
do 
    echo "Iteration $i"
done

# While loop - It runs until the condition is false.

echo "While Loop: "
cnt=1
while [ $cnt -le 5 ];
do 
    echo "Iteration $cnt"
    ((cnt++))  # Arithemetic expansion, increments the value of cnt by 1.
done


# Until loop - It is opposite of while loop. It will run until the condition is true.

echo "Until Loop: "
cnt=1
until [ $cnt -gt 5 ];
do 
    echo "Iteration $cnt"   
    ((cnt++))  
done


# Break statement - It is used to exit the loop when a specific condition is met.
echo "Break Statement: "
for x in {1..5}
do
  if [ $x -eq 3 ]; then
     break;
  fi
  echo "Iteration $x"
done


# Continue statement - It is used to skip the current iteration of the loop and move to the next iteration.
echo "Continue Statement: "
for x in {1..5}
do
  if [ $(($x % 2)) -eq 0 ]; then
     continue;
  fi
  echo "Iteration $x"
done
