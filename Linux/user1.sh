#!/bin/bash
read -p "Plase input you username: " users
if [ -z $users ];then
	echo "用户名不能为空！！！"
	grep -w $users /etc/passwd &>/dev/null
	elif [[ $? -ne 0 ]];then
		useradd $users
	elif [[ $users =~ ^[aA-zZ] && $users =~ ^[0-9] ]];then
		login $users
		if [ $? -eq 0 ];then
			passwd $users
		else
			break
		fi
	else
		echo "请输入正确的用户名: "
fi
