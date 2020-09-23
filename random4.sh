#!/bin/bash

x=1
i=0
while [ $x -eq 1 ]

do

n=$(( RANDOM%10000 ))
if [ $n -ge 1000 ];
then
(( i++ ))
echo "$i $n"
for (( j=2; j<$n; j++ ))

do
r=$(( $n%$j ))

if [ $r -ne 0 ];
then
if [ $(( $j + 1 )) -eq $n ];
then
echo "$n is prime"
x=0
continue
fi
fi
done
fi

done

