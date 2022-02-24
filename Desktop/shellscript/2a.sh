echo -n"Enter the first file:"
read file1
if [ -e $file1 ]
then
set -- `ls -ld $file1`
perm1=$1
else
echo "File doesnt exist"
exit
fi

echo -n"Enter the second file:"
read file2
if [ -e $file2 ]
then
set -- `ls -l $file2`
perm2=$1
else
echo "File doesnt exist"
exit
fi

if [ "$perm1" = "$perm2" ]
then
echo "File permission are identical"
echo "File permission is $perm1"
else
echo "File permission are not identical"
echo "$file1 permission is $perm1"
echo "$file2 permission is $perm2"
fi
