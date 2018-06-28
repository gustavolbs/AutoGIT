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
	
	echo "# These Comands was added by AutoGIT" >> ~/.bashrc
	echo "alias atgit='/home/$(whoami)/.local/bin/atgit'" >> ~/.bashrc
	echo "# Finished the commands of AutoGIT" >> ~/.bashrc
	echo "" >> ~/.bashrc 
	source ~/.bashrc
	
	echo "# These Comands was added by AutoGIT" >> ~/.zshrc
	echo "alias atgit='/home/$(whoami)/.local/bin/atgit'" >> ~/.zshrc
	echo "# Finished the commands of AutoGIT" >> ~/.zshrc
	echo "" >> ~/.zshrc
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
       source ~/.bashrc
       source ~/.zshrc
fi
