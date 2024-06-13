#!/bin/bash

# Prompt the user to enter the name of a file or directory
echo -n "Enter the name of the file or directory: "
read name

# Check if the name corresponds to a file
if [ -f "$name" ]; then
    # If it is a file, display its size
    size=$(stat -c%s "$name")
    echo "The size of the file '$name' is $size bytes."

# Check if the name corresponds to a directory
elif [ -d "$name" ]; then
    # If it is a directory, display its contents
    echo "The contents of the directory '$name' are:"
    ls "$name"

# If the name is neither a file nor a directory
else
    echo "'$name' is neither a file nor a directory."
fi

