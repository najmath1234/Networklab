#!/bin/bash

echo "Please enter the file name:"
read file

if [ ! -f "$file" ]; then
    echo "Error: File $file not found!"
    exit 1
fi

echo "Please enter the text to append:"
read append_text

sed -i "s/$/$append_text/" "$file"

echo "The text '$append_text' has been appended to every line in $file."

