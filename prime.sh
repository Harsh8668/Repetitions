#!/bin/bash -x

read -p "Enter the number to check if the number is prime or not :" num

for (( i=2; i<=$num/2; i++ ))
do
	ans=$((num % i))
	if [ $ans -eq 0 ]
	then
		echo "$num is not a prime number"
		exit
	fi
done
        echo "$num is a prime number"
