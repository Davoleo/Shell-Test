# Parameter Expansion
rand_str="A Random String"

echo "String Length: ${#rand_str}"

#String slice
echo "${rand_str:2}"
echo "${rand_str:2:7}"
echo "${rand_str#*A }"


#PAUSE function.
function pause() {
   read -p "$*"
}

pause 'Press [Enter] key to continue...'