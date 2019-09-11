#!/bin/bash

# Loops
# Arrays

#PAUSE function.
function pause() {
   read -p "$*"
}

num=1

# FIXME
while [ $num -le 10 ]; do
    echo $num
    num=$((num + 1))
done

num=1

pause '---------------------------'

while [ $num -le 20 ]; do
    
    if ((num % 2 == 0)); then
        num=$((num + 1))
        continue
    fi

    if ((num >= 15)); then
        break
    fi

    echo $num
    num=$((num + 1))
done

pause '---------------------------'

num=1

until [ $num -gt 10 ]; do
    echo $num
    num=$((num + 1))
done

pause '---------------------------'

#FIXME not working but ok
while read data1 data2 data3; do
    printf "First number: ${data1}\nSecond Number: ${data2}\nThird Number: ${data3}\n"
done < test.txt


pause '---------------------------'

#For Loops
#C Style
for (( i=0; i <= 10; i=i+1 )); do
    echo $i
done

pause '---------------------------'

for i in {A..Z}; do
    echo $i
done

pause 'Press [Enter] key to continue...'

#Arrays ----
# They're one-dimensional (Take or leave)

#Creates an array
nums=(3.14 333 11 32 0.4)

echo "PI: ${nums[0]}"

#Changes a value at a given index
nums[4]=0.5

echo "GR: ${nums[4]}"

#Appends an array
nums+=(1 5)

#Prints the items inside the array
for i in ${nums[*]}; do
    echo $i
done

pause '---------------------------'

#Prints the array indexes
for i in ${nums[@]}; do
    echo $i
done

pause '---------------------------'

echo "Array Length: ${#nums[@]}"
echo "Index 3 Length: ${#nums[3]}"

pause '---------------------------'

#Sorts an array
sorted_nums=($(for i in "${nums[@]}"; do
    echo $i;
done | sort))

for i in ${sorted_nums[*]}; do
    echo $i
done

pause '---------------------------'

#Removes an array item
unset 'sorted_nums[1]'
#clears an array
unset sorted_nums

pause 'Press [Enter] key to continue...'
