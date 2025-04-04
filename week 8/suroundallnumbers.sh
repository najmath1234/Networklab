#!/bin/bash

echo "Enter the file name:"
read file_name

if [ ! -f "$file_name" ]; then
  echo "File not found!"
  exit 1
fi

sed -i 's/[0-9]\+/[\0]/g' "$file_name"

echo "All numbers in the file have been surrounded with square brackets."

