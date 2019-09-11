#!/bin/bash

#Positional parameters
#The parameters passed when calling the shell script

#PAUSE function.
function pause() {
   read -p "$*"
}

echo "1st argument : $1"

sum=0

while [[ $# -gt 0 ]]; do
    num=$1
    sum=$((sum + num))
    shift # moves the second positional argument to the first place
done

echo "Sum: $sum"

pause 'Press [ENTER] key to continue...'