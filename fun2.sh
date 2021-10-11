#!/bin/bash -x
echo "enter a two numbers"
read n;
read b;
function pal
{
rev=0;
number=$n
while [ $n -gt 0 ]
do
a=`expr $n % 10`
n=`expr $n / 10`
rev=`expr $rev \* 10 + $a`
done
echo $rev
if [ $number -eq $rev ]
then
echo "palindrome"
fi
}
r=`pal $n`
echo $r
