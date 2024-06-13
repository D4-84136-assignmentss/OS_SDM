#!/bin/bash

# Prompt the user to enter three numbers
echo -n "Enter the first number: "
read num1
echo -n "Enter the second number: "
read num2
echo -n "Enter the third number: "
read num3

# Find the greatest number
if [ "$num1" -ge "$num2" ] && [ "$num1" -ge "$num3" ]; then
    greatest=$num1
elif [ "$num2" -ge "$num1" ] && [ "$num2" -ge "$num3" ]; then
    greatest=$num2
else
    greatest=$num3
fi

# Display the greatest number
echo "The greatest of the three numbers is: $greatest"

