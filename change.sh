#!/usr/bin/env bash

if [ $1 = "-E" ] || [ $1 = "-e" ] || [ $1 = "endtb" ] ; then
    (
        cd ~/Bahmni/vagrant
        vagrant up
        vagrant ssh -c "mysql -u root -ppassword openmrs < /bahmni/endtb_dump &&
        sudo unlink /var/www/bahmni_config &&
        sudo ln -s /bahmni/endtb-config /var/www/bahmni_config &&
        sudo service openmrs restart"
    )

elif [ $1 = "-P" ] || [ $1 = "-p" ] || [ $1 = "product" ] ; then
    (
        cd ~/Bahmni/vagrant
        vagrant up
        vagrant ssh -c "mysql -u root -ppassword openmrs < /bahmni/mysql*_dump &&
        sudo unlink /var/www/bahmni_config &&
        sudo ln -s /bahmni/default-config /var/www/bahmni_config &&
        sudo service openmrs restart"
    )
    elif [ $1 = "-O" ] || [ $1 = "-o" ] || [ $1 = "offline" ] ; then
    (
        cd ~/Bahmni/vagrant
        vagrant up
        vagrant ssh -c "mysql -u root -ppassword openmrs < /bahmni/bdshr*_dump* &&
        sudo unlink /var/www/bahmni_config &&
        sudo ln -s /bahmni/bdshr-config /var/www/bahmni_config &&
        sudo service openmrs restart"
    )
else
    tput bold; tput setaf 6; echo "\033[4mUsage\033[0m:"
    tput bold; tput setaf 2; echo "\t-P, -p, product -> Move to product environment"
    tput bold; tput setaf 2; echo "\t-E, -e, endtb -> Move to EndTB environment"
    tput bold; tput setaf 2; echo "\t-O, -o, offline -> Move to Offline environment"
fi

