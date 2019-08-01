# print multiline information
# cat prints a file or any string
cat<< END
This Text 
prints on many
lines
END



#PAUSE function.
function pause() {
   read -p "$*"
}

pause 'Press [Enter] key to continue...'