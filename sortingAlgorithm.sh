#!/bin/bash -x

function resAscending(){
   for (( i=1;i<=4;i++ ))
   do
      for (( j=1;j<=4;j++ ))
      do
         if [ ${array[$i]} -lt ${array[$j]} ]
         then
            temp=${array[$i]};
            array[$i]=${array[$j]};
            array[$j]=$temp;
         fi
      done
   done
}

function resDescending(){
   for (( i=1;i<=4;i++ ))
   do
      for (( j=1;j<=4;j++ ))
      do
         if [ ${array[$i]} -gt ${array[$j]} ]
         then
            temp=${array[$i]};
            array[$i]=${array[$j]};
            array[$j]=$temp;
         fi
      done
   done
}


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

#Function call
resAscending
echo "${array[@]}"
resDescending
echo "${array[@]}"
