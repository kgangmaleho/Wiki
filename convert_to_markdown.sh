#!/bin/bash

FOLDER="/mnt/c/Users/kgang.maleho/Downloads/Docs/"

MEDIA_DIR="src"
mkdir -p "$MEDIA_DIR"

find "$FOLDER" -maxdepth 1 -type f -name "*.docx" | while read -r FILE; do
	if [ ! -e "$FILE" ]; then
		echo "$FILE"
		echo "No DOCX files found in $FOLDER."
		exit 1
	fi

	BASENAME=$(basename "$FILE" .docx)

	pandoc -f docx -t gfm "$FILE" -o "$FOLDER/$BASENAME.markdown" --extract-media="$MEDIA_DIR"
done

echo "Conversion Complete"
