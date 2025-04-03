#!/bin/bash

echo "Please enter the file name:"
read file

if [ ! -f "$file" ]; then
    echo "Error: File $file not found!"
    exit 1
fi

echo "Please enter the word to search for:"
read word

sed -i "/$word/d" "$file"

echo "Lines containing the word '$word' have been deleted from $file."

