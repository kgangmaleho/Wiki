#!/bin/bash

#location of the docx files in the git
FOLDER="/home/edward/wikijs/Wiki/"

#find all docx files in the directory
find "$FOLDER" -maxdepth 1 -type f -name "*.docx" | while read -r FILE; do
	#if file doesn't exist, then continue
	if [ ! -e "$FILE" ]; then
		echo "$FILE"
		echo "No DOCX files found in $FOLDER."
		continue
	fi
	#only if the md file doesn't exist, should you create an md file for the docx
	BASENAME=$(basename "$FILE" .docx)
	NEWBASENAME="${BASENAME// /_}"
	#if [ ! -e "$NEWBASENAME.md" ]; then

	#This is the header of the markdown file that WikiJS uses to identify it
	METADATA=$(cat <<EOF
---
title: $BASENAME
description:
published: true
date: 2024-07-25T13:30:59.335Z
tags:
editor: markdown
dateCreated: 2024-07-25T13:30:59:335Z
---

EOF
)
	#Make the folder to store the images
	mkdir -p "$NEWBASENAME"
	#convert the document files to md format using github md configuration (gfm)
	pandoc -f docx -t gfm --wrap=none "$FILE" -o "/$FOLDER/$NEWBASENAME.md" --extract-media="$NEWBASENAME"
	#add the metadata at the header of the file
	echo "$METADATA" | cat - "$FOLDER/$NEWBASENAME.md" > temp.md && mv temp.md "$FOLDER/$NEWBASENAME.md"
	echo "$NEWBASENAME.md Successfully Created"
#fi
done

echo "Conversion Complete"
