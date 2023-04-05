#!/bin/bash
files=$1
he(){
cat <<EOF
$0 [filesname]
EOF
}


if [ $# -eq 0 ];then
	he
exit 1
fi



a(){
if [ $a -eq 1 ];then
#	read -p "Plase input you names: " names
#	read -p "Plase input you phones: " phone
#	if [ ! -z $names -a ! -z $phone ];then
#		echo $names $phone
#		echo $names:$phone >> 4.txt
#	fi
	 awk 'BEGIN{FS="[:]"}$1~/Sava/{print $1,$2}' $files  
fi
}



b(){
if [ $b -eq 1 ];then
	awk 'BEGIN{FS="[:]"}$1~/Chet/{print "$"$3,"$"$4,"$"$5}' $files
fi
}

c(){
if [ $c -eq 1 ];then
	awk 'BEGIN{FS="[:]"}$3~/250/{print $1}' $files
fi
}


a=0
b=0
c=0
select i in a b c h;do
	case $i in
		a)
			a=1
			a
			break
			;;
		b)
			b=1
			b
			break
			;;
		c)
			c=1
			c
			break
			;;
		h)
			he
			break
			;;
	esac
done

