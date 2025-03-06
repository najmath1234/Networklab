#!/bin/bash
fibonacci() {
n=$1
a=0
b=1
echo "Fibonacci Series up to $n terms:"

for ((i=0; i<n; i++));
do
    echo -n "$a "
    # Calculate the next term
    fn=$((a + b))
    a=$b
    b=$fn
done
echo
}

echo "enter the number of terms for fibonacci series:"
read terms
fibonacci $terms

