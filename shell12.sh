#!/bin/bash

# Check if a filename was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

FILENAME=$1

# Check if the file exists
if [ -e "$FILENAME" ]; then
  # Display the last modification time of the file
  MOD_TIME=$(stat -c %y "$FILENAME")
  echo "The last modification time of '$FILENAME' is: $MOD_TIME"
else
  # Display a message if the file does not exist
  echo "File '$FILENAME' does not exist."
fi

