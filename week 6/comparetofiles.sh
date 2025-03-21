#!/bin/bash
echo " enter a first file name"
read file1
echo " enter a second file name"
read file2
file1=$1
file2=$2

if cmp -s "$file1" "$file2"; then
  echo "The files are identical."
  rm $file1
else
  echo "The files are different."
fi

