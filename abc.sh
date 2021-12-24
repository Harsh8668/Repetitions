#!/bin/bash -x
#To check whether number is palindrome or not:
temp=1

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


#To check no is prime or not:
((num=$1))
ans=0
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
	temp=$((temp+1))


#To check palindrome no is also a prime number:
if [ $temp -eq 3 ]
then
	echo "$1 is palindrome and prime"
elif [ $temp -eq 2 ]
then
	echo "$1 is a palindrome but not a prime number"
else
	echo "$1 is not palindrome and is not a prime number"
fi
}

read -p "Enter the number : " a
echo
isPalindrome $a
