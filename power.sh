#!/bin/bash -x

read -p "Enter the number: " num
echo "$num"

a=1

for (( i=1; i<=$num; i++))
do
	a=$((2*a))
done
