#!/bin/bash

# Simple program that moves all the files from the Downloads to desired directories as Downloads is one of my clustered dir


mkdir -p ~/Downloads
mkdir -p ~/Pictures/Downloaded_Pictures
mkdir -p ~/Movies/Downloaded_Movies
mkdir -p ~/Documents/Downloaded_Documents
mkdir -p ~/Archives
mkdir -p ~/Music/Downloaded_Music

fswatch -0 ~/Downloads | while read -d "" FILE
do
	if [[ ($FILE == *.txt || $FILE == ) && $TEMP_FILE == "" ]]; then
		$( mv $FILE ~/Documents/Downloaded_Documents)
		TEMP_FILE=$FILE
	elif [[ $FILLE == *
	elif [[ $TEMP_FILE == $FILE ]]; then
		TEMP_FILE=""
	fi
done
