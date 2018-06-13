#!/bin/bash
# With SUDO

confirm() {
    read -r -p "${1:--Are you sure you want to uninstall Auto-GIT? [Yes/No]} " response
    case "$response" in [yY][eE][sS]|[yY])
        {
            pwd=$(pwd)
            user=$(whoami)
            
			sudo rm -rf /usr/local/bin/autogit 
			rm -rf ~/.local/etc/AutoGIT

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
	echo "█████╗ ██╗   ██╗████████╗ ██████╗        ██████╗ ██╗████████╗
		 ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗      ██╔════╝ ██║╚══██╔══╝
		 ███████║██║   ██║   ██║   ██║   ██║█████╗██║  ███╗██║   ██║   
		 ██╔══██║██║   ██║   ██║   ██║   ██║╚════╝██║   ██║██║   ██║   
		 ██║  ██║╚██████╔╝   ██║   ╚██████╔╝      ╚██████╔╝██║   ██║   
		 ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝        ╚═════╝ ╚═╝   ╚═╝" 

	echo -e "\nJust a way to simplify your life\n\n"
}

confirm
