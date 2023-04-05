#!/bin/bash

read -p "Plase input Y/N:" yn
if [ "$yn" = "y" -o "$yn" = "Y" ];then
	echo "OK"
elif [ "$yn" = "n" -o "$yn" = "N" ];then
	echo "exit"
else
	echo "sorry"
fi
