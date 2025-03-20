#!/bin/bash
if [ -d "$1" ];
then
  echo "$path is a directory."
else
  echo "$path is not a directory."
fi

