# Parameter Expansion
rand_str="A Random String"

echo "String Length: ${#rand_str}"

#String slice
echo "${rand_str:2}"
echo "${rand_str:2:7}"
echo "${rand_str#*A }"