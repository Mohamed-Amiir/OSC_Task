#!/bin/bash

# Function to perform addition
addition() {
    echo "Enter the first number: "
    read num1
    echo "Enter the second number: "
    read num2
    result=$((num1 + num2))
    echo "$num1 + $num2 = $result"
}

# Function to perform subtraction
subtraction() {
    echo "Enter the first number: "
    read num1
    echo "Enter the second number: "
    read num2
    result=$((num1 - num2))
    echo "$num1 - $num2 = $result"
}

# Function to perform multiplication
multiplication() {
    echo "Enter the first number: "
    read num1
    echo "Enter the second number: "
    read num2
    result=$((num1 * num2))
    echo "$num1 * $num2 = $result"
}

# Main menu
while true; do
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    echo "Enter your choice: "
    read choice

    case $choice in
        1)
            addition
            ;;
        2)
            subtraction
            ;;
        3)
            multiplication
            ;;
        4)
            echo "Sorry, division functionality is not implemented in this version."
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done

