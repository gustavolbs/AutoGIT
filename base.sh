#! /bin/bash

echo
echo " █████╗ ██╗   ██╗████████╗ ██████╗        ██████╗ ██╗████████╗
██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗      ██╔════╝ ██║╚══██╔══╝
███████║██║   ██║   ██║   ██║   ██║█████╗██║  ███╗██║   ██║   
██╔══██║██║   ██║   ██║   ██║   ██║╚════╝██║   ██║██║   ██║   
██║  ██║╚██████╔╝   ██║   ╚██████╔╝      ╚██████╔╝██║   ██║   
╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝        ╚═════╝ ╚═╝   ╚═╝" 
echo -e "\n\n\n"


if [ ! `git config --global push.default` ];then 
	# This will set to send all the pushs to the current branch.
	git config --global push.default current
fi

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

if [ ! `git config --global credential.helper` ];then 

	echo "On next step you'll be asked to enter with your github credentials."
	echo "Next time you run autogit, you don't need to enter the credential again." 
	
	# This code part will get your credentials and store them.
	git config --global credential.helper store
fi

git push



