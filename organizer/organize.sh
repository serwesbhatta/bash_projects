#!/bin/bash

# Simple program that moves all the files from the Downloads to desired directories as Downloads is one of my clustered dir


mkdir -p ~/Downloads
mkdir -p ~/Pictures/Downloaded_Pictures
mkdir -p ~/Movies/Downloaded_Movies
mkdir -p ~/Documents/Downloaded_Documents
mkdir -p ~/Archives
mkdir -p ~/Music/Downloaded_Music

files=$(ls extensions)

type=""

found_file=0

fswatch -0 ~/Downloads | while read -d "" FILE
do
	for file in $files;
	do
		type=$file
		for ext in $(cat extensions/$file);
		do
			if [[ $FILE == $ext ]]; then
				echo "File name matches with the ext in $type"
				found_file=1
				break
			fi
		done
		if [[ $found_file == 1 ]]; then
			break
		fi
	done
	found_file=0
	type=""
done
