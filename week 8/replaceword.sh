#!/bin/bash

echo "Please enter the file name:"
read file

if [ ! -f "$file" ]; then
    echo "Error: File $file not found!"
    exit 1
fi

echo "Please enter the word to be replaced:"
read old_word

echo "Please enter the new word:"
read new_word

sed -i "s/$old_word/$new_word/g" "$file"

echo "All occurrences of '$old_word' have been replaced with '$new_word' in $file."

