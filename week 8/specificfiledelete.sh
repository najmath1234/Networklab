#!/bin/bash

echo "Please enter the file name:"
read file

if [ ! -f "$file" ]; then
    echo "Error: File $file not found!"
    exit 1
fi

echo "Please enter the line number to delete:"
read line_num

sed -i "${line_num}d" "$file"

echo "Line $line_num has been deleted from $file."

