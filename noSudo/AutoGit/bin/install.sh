#!/bin/bash
# Without SUDO

echo '- Welcome to the Auto-GIT installation wizard'
echo

read -r -p "${1:-- Have you installed AutoGIT before? [Yes/No]} " response
case "$response" in [yY][eE][sS]|[yY])
	rm -rf ~/.local/etc/bin/autogit 
	rm -rf ~/.local/etc/AutoGIT
	;;
esac

read -r -p "${1:-- Do you want to install AutoGIT? [Yes/No]} " response
case "$response" in [yY][eE][sS]|[yY])
cd 
cd .local
mkdir .local/bin .local/etc 
cd etc
mkdir bin
cd
	echo "- Now, let's configure the execution file..." 
	{
		pwd=$(pwd)
		user=$(whoami)
    
		
		cp ~/AutoGIT/noSudo/AutoGIT/usr/autogit ~/.local/etc/bin
		mv ~/AutoGIT/noSudo/AutoGIT ~/.local/etc
    
	} || {
		echo
		echo "INSTALLATION FAILED: Something wrong has occurred!"
		installed=false
	}
	echo
	;;
esac

export PATH=$PATH:/home/$(whoami)/.local/bin
source /etc/environment
export PATH=$PATH:/home/$(whoami)/.local/bin
echo

installed=true

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

