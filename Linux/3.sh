#!/bin/bash

read -p "Plase input username:" Username
fun1(){
	echo "YES"
	echo "$Username"
}
fun2(){
	echo "NO"
	echo "$PWD"
}
case $Username in
	root)
		fun1
	;;
	zhangsan)
		fun1
	;;
	lisi)
		fun1
	;;

	*)
		fun2
esac
