#!/bin/bash

echo "Enter the file name:"
read filename

if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi

sed 's/[0-9]//g' "$filename" > "${filename}"

echo "Digits removed. Saved as ${filename}"

