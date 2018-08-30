#!/bin/bash

confirm() {
	read -r -p "${1:--Are you sure you want to uninstall Auto-GIT? [Yes/No]} " response
    case "$response" in [yY][eE][sS]|[yY])
		{
			sed -i "s/# These Comands was added by AutoGIT//g;" ~/.bashrc
			sed -i "/atgit/d" ~/.bashrc
			sed -i "s/# Finished the commands of AutoGIT//g;" ~/.bashrc

			sed -i "s/# These Comands was added by AutoGIT//g;" ~/.zshrc
			sed -i "/atgit/d" ~/.zshrc
			sed -i "s/# Finished the commands of AutoGIT//g;" ~/.zshrc
				
			cd
			rm -fr ~/.local/bin/atgit 
			rm -fr ~/.local/etc/AutoGIT
			
		} || {
			echo '\n\033[0;31m(FAIL)\033[0m Uninstall failed'
		}
		show
		;;
		*)
		show
		;;
    esac
}

show() {
	echo
	echo " █████╗ ██╗   ██╗████████╗ ██████╗        ██████╗ ██╗████████╗
██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗      ██╔════╝ ██║╚══██╔══╝
███████║██║   ██║   ██║   ██║   ██║█████╗██║  ███╗██║   ██║   
██╔══██║██║   ██║   ██║   ██║   ██║╚════╝██║   ██║██║   ██║   
██║  ██║╚██████╔╝   ██║   ╚██████╔╝      ╚██████╔╝██║   ██║   
╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝        ╚═════╝ ╚═╝   ╚═╝" 

	echo -e "\nJust a way to simplify your life\n\n"
}

confirm
