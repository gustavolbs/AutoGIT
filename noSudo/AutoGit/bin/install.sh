#!/bin/bash
# Without SUDO

echo '- Welcome to the Auto-GIT installation wizard'
echo

read -r -p "${1:-- Have you installed AutoGIT before? [Yes/No]} " response
case "$response" in [yY][eE][sS]|[yY])
        rm -rf ~/.local/bin/autogit 
        rm -rf ~/.local/etc/AutoGIT
        ;;
esac

read -r -p "${1:-- Do you want to install AutoGIT? [Yes/No]} " response
case "$response" in [yY][eE][sS]|[yY])
cd 
cd .local
mkdir bin
mkdir etc
cd etc
mkdir bin
cd
	echo "- Now, let's configure the execution file..." 
	{
		pwd=$(pwd)
		user=$(whoami)
		cp ~/AutoGIT/noSudo/AutoGit/usr/autogit ~/.local/bin
		mv ~/AutoGIT/noSudo/AutoGit ~/.local/etc

	} || {
		echo
		echo "INSTALLATION FAILED: Something wrong has occurred!"
		installed=false
	}
	echo
	;;
esac

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
