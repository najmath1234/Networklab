#!/bin/bash
echo "enter the number for multiplication table:"
read num
for((i=0;i<=10;i++));
do
	result=$((num*i))
	echo "$num*$i=$result"
done
