#!/bin/bash
#create user function
function create_user()
{

	read -p "Enter your user name:" username

	read -p "Enter your password:" password

	sudo useradd -m -p $username $password
}
#for loop for multiple user creation
#for ((i=1; i<=2; i++))
#do
#	create_user #Function calling inside loop
#done
#Welcome text
function welcome_user()
{
	echo "Hello warm welcome!!!"
	echo "Use C to create user and d to delete user"
}
# Delete user function
function delete_user()
{
	read -p "Enter the username to be deleted:" username
	sudo userdel -r $username
	echo "$username deleted successfully"
}

case "$1" in 
	c)
	create_user
	;;
	d)
	delete_user
	;;
	*)
	welcome_user
	;;
esac
#cat /etc/passwd | awk -F : '{print $1}'
