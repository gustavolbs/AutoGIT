#!/bin/bash

echo '- Welcome to the Auto-GIT installation wizard'
echo
read -r -p "${1:-- Do you want to install g++ and make? [Yes/No]} " response
    case "$response" in
        [yY][eE][sS]|[yY])
        sudo apt-get install g++ make
    ;;
    esac
echo


installed=true
echo "- Now, let's configure the execution file..."
{
    pwd=$(pwd)
    user=$(whoami)
    
    cd $pwd/usr/dev/
    
    make -s > /dev/null
    mv $pwd/usr/dev/autogit /$pwd/usr/bin
    cp $pwd/usr/bin/autogit /home/$user/.local/bin > /dev/null
} || {
    echo
    echo "INSTALLATION FAILED: Something wrong has occurred!"
    installed=false
}

export PATH=$PATH:/home/$user/.local/bin    
source /etc/environment
echo

if $installed ; then
    echo -e "- Thank's for install Auto-GIT, run 'autogit' on terminal to start\n"

	echo" █████╗ ██╗   ██╗████████╗ ██████╗        ██████╗ ██╗████████╗
		 ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗      ██╔════╝ ██║╚══██╔══╝
		 ███████║██║   ██║   ██║   ██║   ██║█████╗██║  ███╗██║   ██║   
		 ██╔══██║██║   ██║   ██║   ██║   ██║╚════╝██║   ██║██║   ██║   
		 ██║  ██║╚██████╔╝   ██║   ╚██████╔╝      ╚██████╔╝██║   ██║   
		 ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝        ╚═════╝ ╚═╝   ╚═╝" 

	echo -e "\nJust a way to simplify your life\n\n"
fi
