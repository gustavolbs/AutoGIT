#!/bin/bash

echo '- Welcome to the Auto-GIT installation wizard'
echo

rm -rf ~/.local/bin/atgit 
rm -rf ~/.local/etc/AutoGIT

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
	
cd 
cd .local
mkdir bin
mkdir etc
cd etc
mkdir bin
cd
echo "- Now, let's configure the execution file..." 

cp ~/AutoGIT/usr/atgit ~/.local/bin
mv ~/AutoGIT ~/.local/etc

echo -e "- Thank's for installing Auto-GIT, run 'atgit' on terminal to start\n"

echo " █████╗ ██╗   ██╗████████╗ ██████╗        ██████╗ ██╗████████╗
██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗      ██╔════╝ ██║╚══██╔══╝
███████║██║   ██║   ██║   ██║   ██║█████╗██║  ███╗██║   ██║   
██╔══██║██║   ██║   ██║   ██║   ██║╚════╝██║   ██║██║   ██║   
██║  ██║╚██████╔╝   ██║   ╚██████╔╝      ╚██████╔╝██║   ██║   
╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝        ╚═════╝ ╚═╝   ╚═╝" 


       echo -e "\nJust a way to simplify your life\n\n"
       source ~/.bashrc
       source ~/.zshrc

exit
