#!/bin/bash -x

read -p "Enter a :" num1
read -p "Enter b :" num2
read -p "Enter c :" num3

echo "expression 1 :"
result=$(( $num1 + $num2 * $num3));

echo "expression 2 :"
result=$(($num1*$num2+$num3));

echo "expression 3 : "
result=$(($num3+$num1/$num2));

echo "expression 4 :"
result=$(($num1%$num2+$num3));
