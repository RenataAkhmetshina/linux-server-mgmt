#!/bin/bash
# User Management Script

action=$1
username=$2

if [ "$action" == "add" ]; then
    sudo useradd -m "$username"
    echo "User $username created."
elif [ "$action" == "del" ]; then
    sudo userdel -r "$username"
    echo "User $username deleted."
else
    echo "Usage: $0 {add|del} username"
fi
