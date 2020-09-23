#!/bin/bash
x=1
i=0
while [ x=1 ]

do

n=$(( RANDOM%10000 ))
if [ $n -gt 999 ];
then
(( i++ ))
echo "$i"
for (( j=2; j<$n; j++ ))

do
r=$(( $n%$j ))

if [ $r -eq 0 ];
then
break
elif [ $j -eq $n ];
then
x=0
continue
fi
done
fi

done

