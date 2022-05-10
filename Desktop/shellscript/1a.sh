#1a.Write a shell script that takes a valid directory name as an argument and recursively descend all the sub-
#directories,finds the maximum length of any file in that hierarchy and write s this maximum value to the standa
#rd output.
if [ $# -eq 1 ]
then
if [ -d $1 ]
then
set -- `ls -Rl $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9- | sort -n |tail -l`
echo "File name is:$2"
echo "File size is:$1"
else
echo "Not a directory"
fi
else
echo "Enter a directory name"
 fi
