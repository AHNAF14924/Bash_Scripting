#!/bin/bash

# Function to perform addition
add() {
    result=$((num1 + num2))
    echo "Result: $result"
}

# Function to perform subtraction
subtract() {
    result=$((num1 - num2))
    echo "Result: $result"
}

# Function to perform multiplication
multiply() {
    result=$((num1 * num2))
    echo "Result: $result"
}

# Function to perform division
divide() {
    if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        result=$(bc <<< "scale=2; $num1 / $num2")
        echo "Result: $result"
    fi
}

# Input numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Menu to choose the operation
echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter the operation number (1/2/3/4): " choice

case $choice in
    1) add ;;
    2) subtract ;;
    3) multiply ;;
    4) divide ;;
    *) echo "Invalid choice" ;;
esac
