#!/bin/bash

read -p "enter your number- " num
for ((i=1; i<=num; i++))
do
        var1=1/$i
        series1=$series1+$var1
        var=$(echo | awk '{ print '1/$i'}')
        series=$(echo | awk  '{print '$series+$var'}')
done

echo "sum of the series" $series1 "is" $series
