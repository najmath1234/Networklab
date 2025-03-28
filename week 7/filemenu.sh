#!/bin/bash


echo "Enter the filename:"
read filename

if [[ ! -f $filename ]]; then
    echo "File not found!"
    exit 1
fi

echo "Choose the operation:"
echo "1. Delete a particular line"
echo "2. Delete the last line"
echo "3. Delete a range of lines (x to y)"
echo "4. Delete all blank lines"
read choice

case $choice in
    1) 
        echo "Enter the line number to delete:"
        read lineno
        sed -i "${lineno}d" "$filename"
        echo "Line $lineno deleted."
        ;;
    2) 
        sed -i '$d' "$filename"
        echo "Last line deleted."
        ;;
    3)
        echo "Enter the starting line number (x):"
        read start
        echo "Enter the ending line number (y):"
        read end
        sed -i "${start},${end}d" "$filename"
        echo "Lines $start to $end deleted."
        ;;
    4)
        sed -i '/^$/d' "$filename"
        echo "All blank lines deleted."
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

