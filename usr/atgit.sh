#! /bin/bash
# Without SUDO

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

# This will ask you what files you want to send to git.
echo "What files you want to commit? "
echo -n "Files (use . to add all): " 
read -e files
git add "$files"

# This will ask you the message for the commit.
echo 
echo "What message you want to add to your commit? "
echo -n "Your message: "
read message
git commit -m "$message"

# This will ask you your username and password just one time. After then, it will send the files
# to the master branch of your repositorie of git without ask your credentials.
echo 
git push


