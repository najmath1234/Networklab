#!/bin/bash
if [ -z "$1" ]; then
	echo " please provide a file name "
	exit 1
fi
extension="${1##*.}"
case "$extension" in
	sh)
		echo "$1 is a shell script (.sh)"
		;;
	txt)
		echo " $1 is a text file (.txt) "
		;;
	jpeg)
		echo " $1 is a jpeg image (.jpeg) "
		;;
	png)
		echo " $1 is a png file (.png)"
		;;
	*)
		echo " unknown file type or unsupported extension "
		;;
esac

