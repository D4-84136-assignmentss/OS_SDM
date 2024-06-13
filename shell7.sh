#!/bin/bash

# Function to check if a number is positive or negative
check_number() {
    n=$1
    if [ "$n" -gt 0 ]; then
        echo "$n is a positive number."
    elif [ "$n" -lt 0 ]; then
        echo "$n is a negative number."
    else
        echo "$n is neither positive nor negative."
    fi
}

# Check if a number is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a number."
    exit 1
fi

# Call the check_number function with the provided number
check_number $1

