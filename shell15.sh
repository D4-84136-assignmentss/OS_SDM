#!/bin/bash

# Function to reverse the case of a string
reverse_case() {
  echo "$1" | tr 'a-zA-Z' 'A-Za-z'
}

# Check if the correct number of arguments were provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 file1 file2"
  exit 1
fi

FILE1=$1
FILE2=$2

# Check if the first file exists
if [ ! -f "$FILE1" ]; then
  echo "File '$FILE1' does not exist."
  exit 1
fi

# Read the contents of the first file
content=$(cat "$FILE1")

# Reverse the case of the content
reversed_content=$(reverse_case "$content")

# Append the reversed content to the second file
echo "$reversed_content" >> "$FILE2"

echo "Contents of '$FILE1' appended to '$FILE2' in reverse case."

