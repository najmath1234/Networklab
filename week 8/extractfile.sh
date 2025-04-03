#!/bin/bash

echo "Please enter the file name:"
read file

if [ ! -f "$file" ]; then
    echo "Error: File $file not found!"
    exit 1
fi

echo "Please enter the start line number:"
read start_line

echo "Please enter the end line number:"
read end_line

if [ "$start_line" -gt "$end_line" ]; then
    echo "Error: Start line cannot be greater than End line!"
    exit 1
fi

sed -n "${start_line},${end_line}p" "$file"

