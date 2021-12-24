#!/bin/bash -x

function isPalindrome(){
	((c=$1))
	dig=0
	rev=0

	while [ $c -gt 0 ]
	do
		dig=$(( c%10 ))
		rev=$(( rev*10+dig ))
		c=$(( c/10 ))
	done
if [ $rev -eq $1 ]
then
	echo "Number is palindrome"
else
	echo "Number is not Palindrome"
fi
}

a=1221
b=204

isPalindrome $a
isPalindrome $b
