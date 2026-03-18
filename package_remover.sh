#!/bin/bash

#dpkg -s is used to check if a package is present in linux or not
echo "we are here to remove a package"
read -p "Enter a package you wish to remove fromm this linux system : " pkg_name
if dpkg -s $pkg_name &> /dev/null ;then
        echo "removing $pkg_name"
        sudo apt remove $pkg_name -y &> /dev/null
        echo "packacee is removed"
        echo "byy"
        exit 1
else
        echo "$pkg_name is not present"
        echo "by"
fi

