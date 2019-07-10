#!/bin/bash

# Comment

echo "Hello World!"

#PAUSE function.
function pause() {
   read -p "$*"
}

pause 'Press [Enter] key to continue...'