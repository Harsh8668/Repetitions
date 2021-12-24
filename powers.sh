#!/bin/bash -x

read -p "Enter the Number : " num
echo $num

a=1
b=256
for (( i=1; i<=$num; i++ ))
do
	a=$((2*a))
	while [ $a -eq $b ]
	do
		$((a++))
		exit
	done
done
