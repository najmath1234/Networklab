#!/bin/bash
echo "Enter the value of a: "
read a
echo "Enter the value of b: "
read b
echo "Enter the value of c: "
read c
echo "Enter the value of d: "
read d

if [ "$d" -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
    exit 1
fi
result=$((a * 20 - b * 2 + c / d))
echo "The result of the expression (a*20 - b*2 + c/d) is: $result"

