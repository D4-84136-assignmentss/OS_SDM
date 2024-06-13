#!/bin/bash

# List hidden files in the current directory
# Hidden files start with a dot (.)
hidden_files=$(ls -d .??*)

# Check if there are any hidden files
if [ -z "$hidden_files" ]; then
  echo "No hidden files found in the current directory."
else
  echo "Hidden files in the current directory:"
  echo "$hidden_files"
fi

