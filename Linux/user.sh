#!/bin/bash
for i in {001..100};do
	grep -w user$i /etc/passwd
	if [ $? -eq 0 ];then
		userdel user$i
	fi
	useradd user$i 
	echo user$i:123456 | chpasswd
done
