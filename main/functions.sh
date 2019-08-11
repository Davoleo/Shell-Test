# print multiline information
# cat prints a file or any string
cat<< END
This Text 
prints on many
lines
END

getDate(){
    date
    return
}
getDate

#Global Variable (Available EVERYWHERE in this file)
name="Davoleo"

demLocal(){
    local name="Dave"
    return
}
demLocal
echo $name

#Parameters are addressed using $ + the number of the parameter in the order it was given
getSum(){
    local num3=$1
    local num4=$2

    local sum=$((num3+num4))
    echo $sum
}
num1=5
num2=8

sum=$(getSum num1 num2)
echo "The sum is: $sum"