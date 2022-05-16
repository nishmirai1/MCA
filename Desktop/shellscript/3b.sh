#3b.Write shell script to implement terminal locking(similar to the lock command).It should prompt the user for
#a password.After accepting the password entered by the user,it must prompt again for the matching password as confirmation
#and if match occurs,it must lock the keyword until a matching password is entered again by the user,Note that the script must 
#be written to disregard BREAK,control-D.No time limit need be implemented for the lock duration.

echo "Enter password"
stty -echo
read pass
stty echo
echo "Enter confirm password"
stty -echo
read pass2
stty echo
while [ $pass != $pass2 ]
do
	clear
	echo "Password mismatch, Enter the password again"
	stty -echo
	read pass2
	stty echo
done
