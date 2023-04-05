#!/bin/bash
#a=$(($RANDOM%10+1))
#b=0
#until [ $b -eq $a ];do
#read -p "Plase a shuzi: " b
#	if [ $b -lt $a ];then
#		echo "xiaol"
#	elif [ $b -gt $a ];then
#		echo "dal"
#	fi
#done

#a=0
#b=$(($RANDOM%10+1))
#while [ $a -ne $b ];do
#	read -p "Plase input: " a
#	if [ $a -lt $b ];then
#		echo "xiaol"
#	elif [ $a -gt $b ];then
#		echo "dal"
#	fi
#done
#for (( i=1;i<=9;i++ ));do
#	for (( a=1;a<=$i;a++ ));do
#		echo $a "*" $i = $((a*i))
#	done
#done

#name(){
#	name=$(hostname)
#	if [ $name == 'debian' ];then
#		echo "hostname debian"
#	else
#		echo 'hostname' $name
#	fi
#}
#case $1 in
#	-t)
#		name
#		;;
#	-n)
#		;;
#	-p)
#		;;
#esac
op(){
	pwd
}
po(){
	ls -al
}

username=0
select i in op po -t;do
	case $i in
		op)
			op
			;;	
		po)
			po
			;;
		-t)
			username=1	
			break
			;;
		esac
done

if [ $username -eq 1 ];then
	echo $(hostname)
fi
