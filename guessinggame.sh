#!/usr/bin/env bash

echo "This is a guessing"

function ask {
	echo "Enter the number of files in this directory"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "HIGHER."
	else
		echo "lower."
	fi
	ask
done

echo "CORRECT"
