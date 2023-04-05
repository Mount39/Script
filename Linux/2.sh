#!/bin/bash

read -p "Plase input username:" Username
case $Username in
	root)
		echo "YES"
		echo "$Username"
	;;
	zhangsan)
		echo "YES"
		echo "$Username"
	;;
	lisi)
		echo "YES"
		echo "$Username"
	;;

	*)
		echo "NO"
		echo "$PWD"
		pwd
esac
