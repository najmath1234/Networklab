#!/bin/bash

echo "Enter a number: "
read number
sum=0

while [ $number -gt 0 ]; do
    sum=$((sum + number % 10))  
    number=$((number / 10))     
done

echo "The sum of the digits is: $sum"

