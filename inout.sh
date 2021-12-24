#!/bin/bash

read -p "enter your value- " from_number
read -p "enter your second value- " to_number
prime () {
   number=$1
   count=0
   for ((i=2; i<$(( $number/2 )); i++))
   do
      if [ $(( $number%$i )) -eq 0 ]
      then
         count=$(( $count+1 ))
         break
      fi
   done
   if [ $count -eq 0 ]
   then
      echo $number
   fi
}

for ((number=$from_number; number<=$to_number; number++))
do
        prime $number
done
