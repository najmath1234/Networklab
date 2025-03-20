#!/bin/bash

count_characters() {
  file=$1
  char_count=$(wc -c < "$file")  # wc -c counts characters in the file
  echo "Number of characters in '$file': $char_count"
}

count_words() {
  file=$1
  word_count=$(wc -w < "$file")  # wc -w counts words in the file
  echo "Number of words in '$file': $word_count"
}

count_non_empty_lines() {
  file=$1
  non_empty_lines=$(grep -c '[^[:space:]]' "$file")  # grep counts non-empty lines
  echo "Number of non-empty lines in '$file': $non_empty_lines"
}

if [ $# -gt 0 ]; then
  # User provided a file name
  file=$1
  
  if [ -f "$file" ]; then  # Check if the file exists and is regular
    count_characters "$file"
    count_words "$file"
    count_non_empty_lines "$file"
  else
    echo "The file '$file' does not exist or is not a regular file."
  fi
else
  echo "Please provide a file name as an argument."
fi

