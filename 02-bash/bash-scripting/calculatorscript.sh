
# <!-- Script 1: Basic Arithmetic Calculator
# A script that takes two numbers as input and performs basic arithmetic operations (addition, subtraction, multiplication, division).

# Requirements:
# Prompt user for two numbers
# Perform all four operations
# Display the results
# Handle division by zero

#!/bin/bash

echo "This is a basic calculator. Please give me your first number:"
read num1

echo "Please give me your second number:"
read num2

if [ "$num2" -eq 0 ]; then
    echo "Error: Division by zero is not allowed, try again"
    exit 1
fi

addition=$((num1 + num2))
subtraction=$((num1 - num2))
multiplication=$((num1 * num2))
division=$((num1 / num2))

echo "Addition: $addition"
echo "Subtraction: $subtraction"
echo "Multiplication: $multiplication"
echo "Division: $division"








