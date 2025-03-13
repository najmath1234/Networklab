#!/bin/bash

a=0
b=1

limit=10

sum=0

echo "Fibonacci series up to $limit terms:"

for (( i=0; i<limit; i++ ))
do
    echo -n "$a "
    sum=$((sum + a))
    next=$((a + b))
    a=$b
    b=$next
done

echo
echo "Sum of the Fibonacci series is: $sum"

