if [ -e $1 ]
then
set -- `ls -ld $1`
echo "permission are $1"
echo "file link counts is $2"
echo "user name $3"
echo "group name $4"
echo "file size $5"
echo "file modification is done on $6 $7 at $8"
echo "file name $9"
else
echo "file doesnt exist"
fi


