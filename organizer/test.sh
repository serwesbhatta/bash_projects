#!/bin/bash

file_name="new.pdf"

files=$(ls extensions)

type=""

found_file=0

for file in $files;
do
	type=$file
	for ext in $(cat extensions/$file);
	do
		if [[ $file_name == $ext ]]; then
			echo "File name matches with the ext in $type"
			found_file=1
			break
		fi
	done
	if [[ $found_file == 1 ]]; then
		break
	fi
done

