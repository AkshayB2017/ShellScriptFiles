#!/bin/bash
if [ $# -eq 2 ]
	then
		echo "correct arguments supplied"
else
	echo "incorrect arguments supplied"
fi


if [ -e "$1" ]
	then
		echo "yes it exists"
else
	echo "error no existence of file"
fi

if grep -Fxq "$2" "$1" 
	then 
		echo "username exists"
else
	echo "username does not exist"
	echo "appending to file"
	echo "$2">>"$1"


fi
