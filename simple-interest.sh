#!/bin/bash
# This script calculates simple interest

# Function to check if a value is a valid number
is_valid_number() {
    [[ $1 =~ ^[0-9]+([.][0-9]+)?$ ]]
}

# Prompt user for input
echo "Enter Principal:"
read principal
if ! is_valid_number "$principal"; then
    echo "Invalid input. Please enter a valid number for Principal."
    exit 1
fi

echo "Enter Rate of Interest:"
read rate
if ! is_valid_number "$rate"; then
    echo "Invalid input. Please enter a valid number for Rate of Interest."
    exit 1
fi

echo "Enter Time (in years):"
read time
if ! is_valid_number "$time"; then
    echo "Invalid input. Please enter a valid number for Time."
    exit 1
fi

# Calculate simple interest
interest=$(echo "$principal * $rate * $time / 100" | bc)
echo "The Simple Interest is: $interest"
