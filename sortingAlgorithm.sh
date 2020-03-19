#!/bin/bash -x

read -p "Enter a :" num1
read -p "Enter b :" num2
read -p "Enter c :" num3

result=$(( $num1 + $num2 * $num3));
echo "$result"
