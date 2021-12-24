#!/bin/bash -x

isHead=1
isTail=0
count=1
randomCheck=$((RANDOM%2))

while [ $count -le 11 ]
do
	if [ $randomCheck -eq 1 ]
	then
		echo "Its a Heads"
	else
		echo "Its a tails"
	fi
	((count++))
done
