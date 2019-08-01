#!/bin/bash

# You cannot have space between the equals and the members
myName="Davoleo"

# Constant variable
declare -r NUM1=5

num2=4

# Arithmetics
num3=$((NUM1+num2))
num4=$((NUM1-num2))
num5=$((NUM1*num2))
num6=$((NUM1/num2))

echo "5 + 4 = $num3"
echo "5 - 4 = $num4"
echo "5 * 4 = $num5"
echo "5 / 4 = $num6"

# Power
echo $((5**2))
# Modulus - Division Remainder
echo $(( 5%4 ))

#shorthand operators
# += -= *= /=
# They Replace: var = var + 1
rand=5
let rand+=4
echo "$rand"
echo "rand++ = $(( rand++ ))"
echo "++rand = $(( ++rand ))"
echo "rand-- = $(( rand-- ))"
echo "--rand = $(( --rand ))"


# Executing Python Commands
num7=1.2
num8=3.4
num9=$(python -c "print ($num7 + $num8)")
echo $num9