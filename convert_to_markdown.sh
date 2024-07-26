#!/bin/bash

FOLDER="/mnt/c/Users/kgang.maleho/Downloads/Docs/converted/WikiJS/"

MEDIA_DIR="/src"
mkdir -p "$MEDIA_DIR"

find "$FOLDER" -maxdepth 1 -type f -name "*.docx" | while read -r FILE; do
	if [ ! -e "$FILE" ]; then
		echo "$FILE"
		echo "No DOCX files found in $FOLDER."
		continue
	fi

	BASENAME=$(basename "$FILE" .docx)

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
	pandoc -f docx -t gfm "$FILE" -o "/$FOLDER/$BASENAME.md" --extract-media="$BASENAME"

	echo "$METADATA" | cat - "$FOLDER/$BASENAME.md" > temp.md && mv temp.md "$FOLDER/$BASENAME.md"
done

echo "Conversion Complete"
