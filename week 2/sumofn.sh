#!/bin/bash
echo "enter the number of elements:"
read n
sum=0
i=1
while [ $i -le $n ]
do
	echo "enter number $i:"
	read num
	sum=$((sum + num))
	i=$((i+1))
done
echo "the sum of  the $n numbers is: $sum"
