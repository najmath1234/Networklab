#!/bin/bash

read -p "Enter a number: " num

while [ $num -gt 0 ]; do
    echo -n "$((num % 10))" 
    num=$((num / 10))  
done

echo

