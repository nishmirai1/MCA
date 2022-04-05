if [ $# -eq 3 ]
then
	if [ -f $1 ]
	then
		l=`wc -l $1`
		head -n $3 $1 | tail  +$2
	else
		echo "Enter valid file"
	fi
else
	echo "Enter valid argument"
fi

