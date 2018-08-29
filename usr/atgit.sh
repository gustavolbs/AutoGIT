#! /bin/bash

echo
echo " █████╗ ██╗   ██╗████████╗ ██████╗        ██████╗ ██╗████████╗
██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗      ██╔════╝ ██║╚══██╔══╝
███████║██║   ██║   ██║   ██║   ██║█████╗██║  ███╗██║   ██║   
██╔══██║██║   ██║   ██║   ██║   ██║╚════╝██║   ██║██║   ██║   
██║  ██║╚██████╔╝   ██║   ╚██████╔╝      ╚██████╔╝██║   ██║   
╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝        ╚═════╝ ╚═╝   ╚═╝" 
echo -e "\n\n\n"

# This code part will get your credentials and store them.
git config --global credential.helper store

# This will set to send all the pushs to the current branch.
git config --global push.default current

# Add Files
git add .

# Commit
echo 
echo "Commiting as: 'Commit by $(whoami) at $(date '+%A %D %Y %X')'"
git commit -m "Commit by $(whoami) at $(date '+%A %D %Y %X')"

# This will ask you your username and password just one time. After then, it will send the files
# to the master branch of your repositorie of git without ask your credentials.
echo 
git push -f
