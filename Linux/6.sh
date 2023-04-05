#!/bin/bash
#for i in {1..10};do 
#	echo $i
#done

#for ((i=10;i>=10;i--));do
#	echo $i
#	sleep 1
#done

#i=10
#while [ $i -ge 0 ];do
#	echo $i
#	let i--
#	sleep 1
#done
#while [ 1 -gt 0 ]
#do
#	echo "haha"
#	sleep 1
#done
i=0
while ((i<=9)) 
do
	a=$((i++))
	echo "L"$a"";
	sleep 1
done
