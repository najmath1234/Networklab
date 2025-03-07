#!/bin/bash

read -p "Enter the number of elements: " n

for (( i=0; i<n; i++ )); do
    read -p "Enter element $((i+1)): " arr[$i]
done
echo "Array elements: ${arr[@]}"

