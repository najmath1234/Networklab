#!/bin/bash
echo " enter the filename : "
read file1
echo " enter the name to empty file to be created :"
read file2
touch $file2
cp "$file1" "$file2"
echo " contents in $file1 copies to $file2 "
