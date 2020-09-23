#!/bin/bash
x=1
c=0
sum=0

while [ $x -eq 1 ];
do

a=$((RANDOM%6 + 1))
b=$((RANDOM%6 + 1))

sum=$(( $sum+$a+$b ))
(( c++ ))
echo "$c th number of time roll"
echo "The result of both the unbaised roll is $a and $b respectively and the cummulative sum is $sum"
if [ $(( $a+$b )) -eq 12 ];
then
x=0
echo "Both the dice show 6"
fi
done
