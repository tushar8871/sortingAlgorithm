#!/bin/bash -x

read -p "Enter a :" num1
read -p "Enter b :" num2
read -p "Enter c :" num3

declare -A resultArray
resultArray[exp1]=$(( $num1 + $num2 * $num3));
resultArray[exp2]=$(($num1*$num2+$num3));
resultArray[exp3]=$(($num3+$num1/$num2));
resultArray[exp4]=$(($num1%$num2+$num3));

for (( i=1;i<=4;i++ ))
do
	eval array[$i]=${resultArray[exp$i]};
done

