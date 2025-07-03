#!/bin/bash

echo "Select an operation:"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
read -p "Enter choice: " choice

read -p "Enter first number: " a
read -p "Enter second number: " b 

case $choice in
  1) result=$((a + b));;
  2) result=$((a - b));;
  3) result=$((a * b));;
  4) 
    if [ $b -ne 0 ]; then
      result=$((a / b))
    else
      echo "Cannot divide by zero"
      exit 1
    fi
    ;;
  *) echo "Invalid choice"; exit 1;;
esac

echo "Result: $result"

