#!/bin/bash -x

read -p "Enter a :" num1
read -p "Enter b :" num2
read -p "Enter c :" num3

declare -A resultArray
result=$(( $num1 + $num2 * $num3));
resultArray[exp1]=$result;

result=$(($num1*$num2+$num3));
resultArray[exp2]=$result;

result=$(($num3+$num1/$num2));
resultArray[exp3]=$result;

result=$(($num1%$num2+$num3));
resultArray[exp4]=$result;

echo "${!resultArray[@]}"
echo "${resultArray[@]}"
