
#!/bin/bash

##Note --> use name of package as arguments after running this bash script .. EX--> ./package_installer.sh nginx
## Here nginx is the argument here , i.e $1 


echo "Installing packages with arguments "

if dpkg -s $1 &> /dev/null;
then
        echo " $1 already present "
        echo "exiting this loop "
        exit 1
else
        echo " Updating the system  "
        sudo apt update -y &>/dev/null
        echo " Installing the package "
        sudo apt install $1 -y &> /dev/null
        echo "starting the service "
        sudo systemctl start $1 > /dev/null
        echo "Enabling the service "
        sudo systemctl enable $1 >/dev/null
        echo "Going to display the status if $1 "
        sudo systemctl status $1
        echo " BY By .."
fi

