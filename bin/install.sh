#!/bin/bash


#PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

echo '- Welcome to the Auto-GIT installation wizard'
echo
read -r -p "${1:-- Do you want to install git and AutoGIT? [Yes/No]} " response
    case "$response" in
        [yY][eE][sS]|[yY])
        sudo apt-get install git
       
    ;;
    esac
echo


installed=true
echo "- Now, let's configure the execution file..."
{
    pwd=$(pwd)
    user=$(whoami)
    
    sudo cp -rf $OLDPWD /usr/local/etc/ 
    sudo cp $OLDPWD/usr/autogit /usr/local/bin
    
    
} || {
    echo
    echo "INSTALLATION FAILED: Something wrong has occurred!"
    installed=false
}
PATH=$PATH:/usr/local/etc/AutoGIT/usr
export PATH
source /etc/environment
echo


if $installed ; then
    echo -e "- Thank's for install Auto-GIT, run 'autogit' on terminal to start\n"

echo " █████╗ ██╗   ██╗████████╗ ██████╗        ██████╗ ██╗████████╗
██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗      ██╔════╝ ██║╚══██╔══╝
███████║██║   ██║   ██║   ██║   ██║█████╗██║  ███╗██║   ██║   
██╔══██║██║   ██║   ██║   ██║   ██║╚════╝██║   ██║██║   ██║   
██║  ██║╚██████╔╝   ██║   ╚██████╔╝      ╚██████╔╝██║   ██║   
╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝        ╚═════╝ ╚═╝   ╚═╝" 

	echo -e "\nJust a way to simplify your life\n\n"
fi
