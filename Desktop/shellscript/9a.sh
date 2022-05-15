if [ $# -eq 3 ]
then
	if [ -f $1 ]
	then
		l=` wc -l $1 | cut -d " " -f 1 `
		if [ $2 -le $3 -a $2 -le $l -a $3 -le $l ]
		then
			head -n $3 $1 | tail -n +$2
		else
			echo "out of range "
		fi
	else
		echo "enter a valid file"
	fi
else
        echo "enter argument"
	echo "Usage:FileName StartingLine and EndLine"
fi


