#!/bin/bash 
[ -e /shell ]  || mkdir /shell
mkdir1="/shell" 
for files in "$mkdir1"/*;do
if [[ $files == *.sh ]];then
	chmod +x "$files"
elif [[ -d $files ]];then
	ls -al > /dev/null
else
	chmod -x "$files"
fi
done
