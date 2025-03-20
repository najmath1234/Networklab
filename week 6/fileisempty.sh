#!/bin/bash

# Check if a file name is provided
if [ -z "$1" ]; then
  echo "Please provide a file name."
  exit 1
fi

# Check if the file is empty
if [ ! -s "$1" ]; then
  echo "$1 is empty."
else
  echo "$1 is not empty."
fi

