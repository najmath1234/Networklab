#!/bin/bash

echo "Please enter the file name:"
read file

if [ -r "$file" ]; then
  echo "The file has read permission."
else
  echo "The file does not have read permission."
fi

if [ -w "$file" ]; then
  echo "The file has write permission."
else
  echo "The file does not have write permission."
fi

if [ -x "$file" ]; then
  echo "The file has execute permission."
else
  echo "The file does not have execute permission."
fi

