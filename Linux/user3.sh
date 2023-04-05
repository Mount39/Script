#!/bin/bash
for ((b=1;b<=3;b++));do	
read -p "Plase username:" a
	if [  -z $a ];then
		echo "请输入一个正确的用户名:"
		continue
	elif [[ $a =~ ^[a-zA-Z] ]];then
		echo "用户创建成功"
		break
	elif [[ $a =~ [^"\ ",*,\.,] ]];then
		echo "Users not can create "
#	elif [[ $a =~ ^[A-Z] ]];then
#		echo "用户创建成功"
#		break
	else
		echo "请输入一个正确的用户名"
		continue
	fi
done

