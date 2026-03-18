#!/bin/bash


# This command is used to install any packages
echo " We are going to check a package is install or not ,if not we are going to install it"

read -p "which  package do you want to install : " pkg_name
# dpkg -s is used to check if a package is installed in linux or not

if dpkg -s $pkg_name &>/dev/null ; then 
        echo "package already present"
        echo "skipinng the installatiion"
        exit 1
else
        echo "updating the linux system"
        sudo apt update -y &> /dev/null
        echo "installing the $pkg_name"
        sudo apt install $pkg_name -y &> /dev/null
        echo "starting the service"

        read -p "which service do you want to start : " svc_name
        sudo systemctl start $svc_name
        echo "enabling the service"
        sudo systemctl enable $svc_name
        echo "$pkg_name started"
        echo "work done byy..."
fi

