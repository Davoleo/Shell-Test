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


pause 'Press [Enter] key to continue...'

#For Loops
#C Style
for (( i=0; i <= 10; i=i+1 )); do
    echo $i
done

pause 'Press [Enter] key to continue...'

for i in {A..Z}; do
    echo $i
done

pause 'Press [Enter] key to continue...'

