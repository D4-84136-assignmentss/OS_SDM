#!/bin/bash

# Function to check if a number is prime
is_prime() {
    n=$1
    if [ $n -le 1 ]; then
        echo "$n is not a prime number."
        return
    fi

    for (( i=2; i*i<=n; i++ ))
    do
        if [ $((n % i)) -eq 0 ]; then
            echo "$n is not a prime number."
            return
        fi
    done
    echo "$n is a prime number."
}

# Check if a number is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a number."
    exit 1
fi

# Call the is_prime function with the provided number
is_prime $1

