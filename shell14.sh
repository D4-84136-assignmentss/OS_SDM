#!/bin/bash

# List all files in the current directory
files=$(ls -p | grep -v /)

# Initialize an array to hold executable files
executable_files=()

# Loop through the files to check for executables
for file in $files; do
  if [ -x "$file" ]; then
    executable_files+=("$file")
  fi
done

# Check if there are any executable files
if [ ${#executable_files[@]} -eq 0 ]; then
  echo "No executable files found in the current directory."
else
  echo "Executable files in the current directory:"
  for exec_file in "${executable_files[@]}"; do
    echo "$exec_file"
  fi
fi

