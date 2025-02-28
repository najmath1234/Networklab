#!/bin/bash
if [ -z "$1" ]; then
	echo " usage: $0 <filename> "
	exit 1
fi
line_count=$(wc -l < "$1" )
echo " the file '$1' has $line_count lines "

