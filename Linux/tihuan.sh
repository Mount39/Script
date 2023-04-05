#!/bin/bash
filesname=$1
help(){
cat <<EOF
$0 filesname
EOF
}
if [ $# -eq 0 ];then
	echo "格式错误请以一下格式再试一次"
	 help
	 exit 0 
fi
read -p "Plase input 替换值: " tihuan1
read -p "Plase input 被替换值: " tihuan2
#if [[ $tihuan1 =~ ["*"] ]];then
#	sed -i  "s/\*/1/g" $filesname
#fi

#
b=`cat -n 1.txt | grep '*' | wc -l`      #有几行*
for ((c=1;c<=$b;c++));do
d=`cat -n $filesname | grep '*' | sed -n 1p | xargs -n1 | sed -n 1p`  #每行*的行号
	for i0 in $d;do
	sed -i -r "$((i0))s/\*/$tihuan2/g" $filesname
	done
	exit 0
done


if [ -z $tihuan1 ];then
	echo "替换值不能为空"
	elif [ -z $tihuan2 ];then
		echo "被替换值也不能为空"
fi
only=0
global=0
select i in only global;do
	case $i in 
		only)
			only=1
			break
			;;
		global)
			global=1
			break
			;;
	esac
done
if [ $only -eq 1 ];then
		count=`cat -n "$1" | grep "$tihuan1" | wc -l`

	if [[ $count -ne 0 && $tihuan1 =~ [aA0-zZ9] && tihuan2 =~ [aA0-zZ9]  ]];then
		for ((d=1;d<=$count;d++));do
			linenum=`cat -n $filesname | grep "$tihuan1" | sed -n 1p | xargs -n1 | sed -n 1p`

			read -p "第$((d))是否替换请输入[y/n]: " num1
				if [[ $num1 =~ ["y"] && $tihuan1 != ["*"] ]];then
					sed -i "$((linenum))s/$tihuan1/$tihuan2/" $filesname
					echo "替换成功！"
				elif [[ $num1 =~ ["n"] ]];then
					echo "跳过替换！"
			      		continue
		        	else
					break
				fi

		done
	elif [ $count -eq 0 ];then
		echo "替换值找不到"

	fi

	elif [ $global -eq 1 ];then
		sed -i "s/$tihuan1/$tihuan2/g" $1
fi

