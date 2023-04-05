#/bin/bash

#for ((i=1;i<=9;i++))
#do
#	for ((a=1;a<=$i;a++))
#	do
#		c=$(($i*$a))
#		echo -en "$i*$a=$c\t"
#	done
#	echo -e "\n"
#done
a=0
while ((a<=8))
do
	((a++))
	for ((i=1;i<=$a;i++))
	do
		c=$(($i*$a))
		echo -en "$i*$a=$c\t"
	done
	echo -e "\n"
done
