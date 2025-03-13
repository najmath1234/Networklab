#!/bin/bash

echo "Enter a 5 digit number: "
read number

if [ ${#number} -ne 5 ]; then
    echo "Error: Please enter exactly a 5 digit number."
    exit 1
fi

reverse=""
for (( i=${#number}-1; i>=0; i-- )); do
    reverse="$reverse${number:$i:1}"
done

echo "The reverse of the number is: $reverse"

