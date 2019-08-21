#!/bin/bash

#Create files / dirs (if not present)
touch samp_file
[ -d samp_dir ] || mkdir samp-dir

#Deletes files / dirs
rm samp_file
rmdir samp-dir

string1=""
string2="Sad"
string3="Happy"

if [ "$string1" ]; then
    echo "string1 is not null"
fi

if [ -z "$string1" ]; then 
    echo "string1 has no value"
fi

if [ "$string1" == "$string3" ]; then 
    echo "string1 equals $string3"
else
    echo "string1 is not equal to $string3"
fi

if [ "$string2" > "$string3" ]; then
    echo "$string2 is greater than $string3"
elif [ "$string2" < "$string3"]; then
    echo "$string2 is lesser than $string3"
else
    echo "$string2 euqals $string3"
fi

# -e (checks if a file exists)
# -f (checks if it's a normal file)
# -r (checks if a file is readable)
# -w (checks if a file is writable)
# -x (checks if a file is executable)
# -d (checks if a file is actually a directory)
# -L (checks if a file is a symbolic link)
# -p (checks if a file is a named pipe)
# -S (checks if a file is a network socket)
# -G (checks if a file is owned by the group)
# -O (checks if a file is owned by the user)

file1="./generated/test_file1"
file2="./generated/test_file2"

if [ -e "$file1" ]; then
    echo "$file1 exists"
fi

#Regular Expressions
read -p "Validate Date :  " date

pat="^[0-9]{8}$"

if [[ $date =~ $pat ]]; then 
    echo "$date is valid"
else
    echo "$date is not valid"
fi

#Multiple user input
read -p "Enter 2 Nums to Sum : " num1 num2
sum=$((num1+num2))
echo "$num1 + $num2 = $sum"

read -sp "Enter the secret code : " secret

if [ "$secret" == "password" ]; then
    echo "Enter"
else
    echo "Wrong Password"
fi

#Custom separated values user input values
OIFS="$IFS"
IFS=","
read -p "Enter 2 numbers to add separated by a comma : " num1 num2

num1=${num1//[[:blank:]]/}
num2=${num2//[[:blank:]]/}
sum=$((num1+num2))
echo "$num1 + $num2 = $sum"

IFS="$OIFS"

#Parameter expansion
name="Davoleo"
echo "${name}'s"

#string substitution
samp_string="The dog climbed the tree"
echo "${samp_string//dog/cat}"

#if name was empty it would automatically have Davoleo as default value
echo "I am ${name:=Davoleo}"
