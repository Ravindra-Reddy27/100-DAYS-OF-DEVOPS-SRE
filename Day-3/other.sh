#!/bin/bash


# This is example purpose only. Not good all in single file.
echo "For loop :"
for x in {1..5}
do
  echo $x
done


printf "\n\n"
# start..stop..step
echo "Start..Stop..Step"
for x in {1..10..2}
do
  echo $x
done


printf "\n\n"
echo "With Out Brace expansion"
for x in 1 2 3 4 5
do
  echo $x
done  


printf "\n\n"
echo "Using seq command"
x=2
for i in $(seq "$x" 5)
do
  echo $i
done


printf "\n\n"
echo "Using seq command with step"
x=2
# Start Step Stop
for i in $(seq "$x" 2 10)
do
  echo $i
done



# While loop
printf "\n\n"
echo "While loop"
cnt=1
while [ $cnt -lt 5 ]
do
  echo "$cnt"
  ((cnt++))
done
  

#Until loop
printf "\n\n"
echo "Until loop"
cnt=1
until [ $cnt -gt 5 ]
do
  echo "$cnt"
  ((cnt++))
done


#Break
printf "\n\n"
echo "For loop with break"
for x in {1..5}
do
  if [ $x -eq 3 ]; then
     break;
  fi
  echo $x
done


#Continue
printf "\n\n"
echo "For loop with continue"
for x in {1..5}
do
  if [ $(($x % 2)) -eq 0 ]; then
     continue;
  fi
  echo $x
done



# Functions
printf "\n \n"
addtion(){
  echo "sum of $1 and $2 : $(($1 + $2))"
}

addtion 1 2

arg(){
  echo "First arg     : $1"
  echo "Second arg    : $2"
  echo "Number of args: $#"
  echo "All arguments : $*"
  echo "Last exit code: $?"
}

arg 1 2