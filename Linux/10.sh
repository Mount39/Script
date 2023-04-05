#!/bin/bash

#echo -n "倒计时:"
#tput sc   #保存当前光标位置
#
#i=10    #定义$i变量值为10
#until [ $i -eq 0 ];do    #当$i等于0之后，退出循环
#	tput rc    #显示输出
#	tput ed    #清空光标所在位置到屏幕结尾的所有内容
#	echo -n "$i"   #不换行输出$i变量
#	let i--		#算数运算$i每次减一
#	sleep 1 	#睡眠一秒
#done
#echo 


#select i in ls pwd free;do
#	$i
#done
#select i in zhangsan lisi wangwu;do
#	case $i in
#		zhangsan)
#			echo "I am zhangsan"
#			;;
#		lisi)
#			echo "I am lisi"
#			;;
#		*)
#			echo "I am wangwu"
#			;;
#	esac
#done


#for i in {1..10}
#do
##	[ $i -eq 5 ] && continue    #跳过$i=5的时候
#	echo $i
#	[ $i -eq 5 ]  && break   #break整个循环退出，continue跳过单次循环
#done
#
#echo " "
#for a in {1..10}
#do
#	[ $a -eq 9 ] && continue
#	echo $a
#done

#until [ $# -le 0 ];do
#	echo "The frist arg: $1 $#"
#	shift 1
#done


fun(){
cat <<EOF
Plase input $0 [option] username
-a "add User"
-r "delete User"
-p "Set User Password"
-h "show Help list"
EOF
exit 0
}
if [ $# -eq 0 ];then
	fun
fi
user=0
password=0
delete=0
until [ $# -eq 0 ];do
	case $1 in
		-a)
			user=1
			shift 1
			;;
		-r)
			delete=1
			shift 1
			;;
		-p)
			password=1
			shift 1
			;;
		-h)
			fun
			;;
		*)
			username=$1
			shift 1
			;;

	esac
done
if [ $user -eq 1 -a $password -eq 1 -a $delete -ne 1 ];then
	grep -w $username /etc/passwd &> /dev/null
	if [ $? -eq 0 ];then
		echo "user created"
	else
		useradd $username
		passwd $username
	fi
fi
	
if [ $delete -eq 1 -a $password -eq  1 ];then
		echo "不可使用这样的方法"
	elif [ $delete -eq 1 -a $user -eq 1 ];then
		echo "创建用户不可以和删除用户一起使用"
fi

if [ $delete -eq 1 -a $password -ne 1 -a $user -ne 1 ];then
	grep -w $username /etc/passwd &> /dev/null
	if [ $? -eq 0 ];then
       	userdel $username
       	echo "用户已删除"$username
	else
		echo "用户不存在"
	fi
fi
