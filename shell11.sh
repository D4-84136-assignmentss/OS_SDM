#!/bin/bash

# Function to calculate gross salary
calculate_gross_salary() {
    basic_salary=$1
    da=$(echo "0.40 * $basic_salary" | bc)
    hra=$(echo "0.20 * $basic_salary" | bc)
    gross_salary=$(echo "$basic_salary + $da + $hra" | bc)
    echo "Basic Salary: $basic_salary"
    echo "DA (40%): $da"
    echo "HRA (20%): $hra"
    echo "Gross Salary: $gross_salary"
}

# Prompt the user for basic salary
read -p "Enter the basic salary: " basic_salary

# Validate input to ensure it's a number
if ! [[ "$basic_salary" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Please enter a valid number for the basic salary."
    exit 1
fi

# Call the calculate_gross_salary function with the provided basic salary
calculate_gross_salary $basic_salary

