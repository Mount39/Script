#!/bin/bash
a=`cat /root/username.txt`
for i1 in $a;do
	grep -qw $i1 /etc/passwd 
	if [ $? -eq 0 ];then
		userdel -rm  $i1 &> /dev/null
	fi
done	
if [ -e /root/users.txt ];then
		rm -rf /root/users.txt
	fi
for i in $a;do
	passwd=`mkpasswd -5 $i` 
	useradd -m $i &> /dev/null
	echo $i:$i | chpasswd  &>/dev/null
	echo 'username: '$i >> /root/users.txt
	echo 'password: '$passwd >> /root/users.txt 
done
#username=$(whoami)
#if [ ! -f ~/.password ];then
#	echo "首次登录需要更改密码"
#	#read -sp "Plase input you password:" passwd
#	passwd
#	touch ~/.password
#fi

for i2 in $a;do
	chage -d 0 $i2	
done
