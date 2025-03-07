#!/bin/bash

perform_operation() {
	case $1 in
	1)
            result=$(( $2 + $3 ))
            echo "Result: $2 + $3 = $result"
            ;;
        2) 
            result=$(( $2 - $3 ))
            echo "Result: $2 - $3 = $result"
            ;;
        3)
            result=$(( $2 * $3 ))
            echo "Result: $2 * $3 = $result"
            ;;
        4) 
            if [ $3 -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$(( $2 / $3 ))
                echo "Result: $2 / $3 = $result"
            fi
            ;;
        5)
            result=$(( $2 % $3 ))
            echo "Result: $2 % $3 = $result"
            ;;
        *)
            echo "Invalid option. Please choose a number between 1 and 5."
            ;;
    esac
}


echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
read -p "Enter the operation number (1-5): " operation
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

perform_operation $operation $num1 $num2

