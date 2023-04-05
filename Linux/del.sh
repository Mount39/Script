#!/bin/bash
#dirpath=$1
#HELP(){
#cat <<EOF
#Plase use $0 DirPath
#EOF
#}
#if [ $# -ne 0 -a $# -eq 1 ];then
#	files=$(find $dirpath -type f -not -name "*.bak,*.sh" -mtime +30)
#	for i in $files;do
#		#rm -rf $i
#		echo $i
#	done
#elif [ $# -ne 0 -a $# -ne 1 ];then
#	echo "DirPath only have one!"
#else
#	HELP
#fi

filesname=$1
Remove(){
	mv $filesname /recycle/
	touch -m /recycle/$filesname
}
#	files=$(find $dirpath -type f -not -name "*.bak,*.sh" -mtime +30)
#	for i in $files;do
#		#rm -rf $i
#		echo $i
#	done
HELP(){
cat <<EOF
Plase $0 filesname 
EOF
}

filestime(){
#while true;do
#	find /recycle -mtime +30 -exec rm -rf {} \;
#	sleep 1
#done
bash /root/find1.sh &
}
code=$(ps -aux | grep "find1.sh" | head -n1 | awk '{print $12}')
code1=$(ps -aux | grep "find1.sh" | head -n1 | awk '{print $2}')



if [ $code == "/root/find1.sh" ];then
	kill -9 $code1
fi



if [ $code != "/root/find1.sh" ];then
	filestime
elif [ $# -eq 0 ];then
	HELP
fi



if [ -e $filesname ];then
	Remove
fi
