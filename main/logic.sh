#!/bin/bash

# Reading input from the user
# Conditionals
# Logic Operators

# -p means we want to prompt with a string ---
# name is the variable in which the user input is stored
read -p "What's your name? " name
echo "Hello $name"

#------------- Conditional if statement
read -p "How old are you? " age



#conditional abbreviations:
#    eq: equals to
#    ne: not equals to
#    le: less or equals to
#    lt: less than
#    ge: greater or equals to
#    gt: greater than

#Conditional Statements
if [ $age -ge 18 ]
then
    echo "You can drive"
elif [ $age -eq 17 ]
then
    echo "You can drive next year"
else
   echo "You can't drive"
fi

read -p "Enter a number: " num

if ((num == 10)); then
    echo "Your number is 10"
fi

if ((num > 10)); then
    echo "Your number is greater than 10"
else 
    echo "Your number is less than 10"
fi

if (( ((num % 2)) == 0)); then
    echo "Your number is even"
else
    echo "Your number is odd"
fi

# Logical operators -----
if (( ((num > 0)) && ((num < 11)) ));
then
    echo "$num is between 1 and 10"
fi

#Case Statements -----
read -p "How old are you : " age

case $age in

[0-4]) 
    echo "To young for school"
    ;; # Stop checking further

5)
    echo "Go to kindergarten"
    ;;

# Age between 6 and 9 or between 10 and 18
[6-9]|1[0-8])
    grade=$((age-5))
    echo "Go to grade $grade"
    ;;

*)
    echo "You are too old for school"
    ;;

esac

#Ternary Operator ------
can_vote=0
age=18

((age>=18?(can_vote=1):(can_vote=0)))
echo "Can Vote : $can_vote"


#PAUSE function.
function pause() {
   read -p "$*"
}

pause 'Press [Enter] key to continue...'