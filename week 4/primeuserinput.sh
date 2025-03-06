#!/bin/bash


read -p "Enter a number: " n

for ((num=2; num<=n; num++)); do
    is_prime=1
    for ((i=2; i<=num/2; i++)); do
        if ((num % i == 0)); then
            is_prime=0
            break
        fi
    done
    if ((is_prime == 1)); then
        echo -n "$num "
    fi
done
echo 

