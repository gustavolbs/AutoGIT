#!/bin/bash
# Without SUDO

echo '- Welcome to the Auto-GIT installation wizard'
echo

read -r -p "${1:-- Have you installed AutoGIT before? [Yes/No]} " response
case "$response" in [yY][eE][sS]|[yY])
        rm -rf ~/.local/bin/atgit 
        rm -rf ~/.local/etc/AutoGIT
        ;;
esac
case "$response" in [nN][oO]|[nN])
	
	echo "export PATH=$PATH:/home/$(whoami)/.local/bin" >> ~/.bashrc
	source ~/.bashrc
	echo "export PATH=$PATH:/home/$(whoami)/.local/bin" >> ~/.profile
	source ~/.profile
	echo "export PATH=$PATH:/home/$(whoami)/.local/bin" >> ~/.bash_profile
	source ~/.bash_profile
	echo "export PATH=$PATH:/home/$(whoami)/.local/bin" >> ~/.zshrc
	source ~/.zshrc
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

		cp ~/AutoGIT/usr/atgit ~/.local/bin
		mv ~/AutoGIT ~/.local/etc

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

	echo -e "- Thank's for install Auto-GIT, run 'atgit' on terminal to start\n"

echo " █████╗ ██╗   ██╗████████╗ ██████╗        ██████╗ ██╗████████╗
██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗      ██╔════╝ ██║╚══██╔══╝
███████║██║   ██║   ██║   ██║   ██║█████╗██║  ███╗██║   ██║   
██╔══██║██║   ██║   ██║   ██║   ██║╚════╝██║   ██║██║   ██║   
██║  ██║╚██████╔╝   ██║   ╚██████╔╝      ╚██████╔╝██║   ██║   
╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝        ╚═════╝ ╚═╝   ╚═╝" 


       echo -e "\nJust a way to simplify your life\n\n"
fi
