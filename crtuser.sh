#!/bin/bash

read -p "Enter your user name:" username

read -p "Enter your password:" password

sudo useradd -m ${username} -p ${password}

cat /etc/passwd | awk -F : '{print $1}'
~                                       

#Using For loop Iteration:
function user_loop()
for ((i=1; i<=5; i++))
do
read -p "Enter your user name:" username

read -p "Enter your password:" password

sudo useradd -m ${username} -p ${password}

done
user_loop
#cat /etc/passwd | awk -F : '{print $1}' 
