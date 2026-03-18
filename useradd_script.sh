#!/bin/bash

# This is the script to add any  number of user 
echo "We are here to add 10 users"
echo "Here we go "
for i in {1..5}
do
        read -p "Enter the name of the user : " user
        echo "Adding user no. $i : "
        sudo useradd $user

        echo "Added user $user "
        sleep 2
done

