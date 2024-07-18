#!/bin/bash

read -p "Enter your user name: " username
read -s -p "Enter your password: " password
echo

# Encrypt the password
encrypted_password=$(openssl passwd -1 "$password")

# Add the new user with the encrypted password
sudo useradd -m -p "$encrypted_password" "$username"

# Print all usernames
awk -F : '{print $1}' /etc/passwd

