#!/bin/bash

echo "Enter the file name:"
read file_name

if [ ! -f "$file_name" ]; then
  echo "File not found!"
  exit 1
fi

sed -i '/\.$/a can you tell me.' "$file_name"

echo "Changes have been made '$file_name'."


