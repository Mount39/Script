#!/bin/bash
#tocal=$(free -m | grep "Mem" | awk '{print $2}')
#free=$(free -m | grep "Mem" | awk '{print $4}')
#buff=$(free -m | grep "Mem" | awk '{print $6}')

#while true;do
#	Mem=$(free -m | awk 'BEGIN{FS=" "}NR==2{printf "%d\n",$3/$2*100}')
#
#	if [ $Mem -gt 4 ];then
#		echo "内存空间已超过85%,请及时检查" | mail -s "Warning" root	
#	fi
#	sleep 1
#done
while true;do
	name=$(df -Th | awk 'NR>1{print NR}')
	for i in $name;do
		used=$(df -Th | awk -v a=$i 'NR==a{print $6}' | awk 'BEGIN{FS="%"}{print $1}')
		sleep 1
		diskname=$(df -Th | awk -v a=$i 'NR==a{print $1}' | awk 'BEGIN{FS="%"}{print $1}')
		if [ $used -gt 3 ];then
			echo "$diskname分区空间已使用超过85%,请及时检查" | mail -s "Warning" root	
		fi
	done
	sleep 2
done
