#!/bin/bash
echo "enter a number"
read n
sum=0
for((i=1;i<=n;i++));
do
	sum=$((sum+i))
done
echo "the sum of $n numbers is $sum"
