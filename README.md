# AutoGIT Instructions

## Documentation
* [Goal](https://github.com/gustavolbs/AutoGIT#goal)
* [Download](https://github.com/gustavolbs/AutoGIT#download)
* [Installation](https://github.com/gustavolbs/AutoGIT#installation)
  * **NON** [Sudo installation](https://github.com/gustavolbs/AutoGIT#non-sudo-installation)
  * [Sudo installation](https://github.com/gustavolbs/AutoGIT#sudo-installation)
* [Uninstallation](https://github.com/gustavolbs/AutoGIT#uninstallation)
  * **NON** [Sudo uninstallation](https://github.com/gustavolbs/AutoGIT#non-sudo-uninstallation)
  * [Sudo uninstallation](https://github.com/gustavolbs/AutoGIT#sudo-uninstallation)
* [Using](https://github.com/gustavolbs/AutoGIT#using)
* [Special Thanks](https://github.com/gustavolbs/AutoGIT#special-thanks)


## Goal
   The goal of this program is to simplify the life of git users, avoiding having to enter git commands and avoiding the user having to enter their credentials to perform a _push_, for example.
   
## Download
   To download the AutoGit, open the terminal and paste one of theses codes below
```
cd && git clone https://github.com/gustavolbs/AutoGIT.git
```
**or**
```
wget -cO - https://github.com/gustavolbs/AutoGIT/archive/master.zip > AutoGIT.zip && unzip AutoGIT.zip && mv AutoGIT-master AutoGIT
```

## Installation
#### **NON** Sudo installation
   If you do **NOT HAVE** access to the **SUDO**, use the following command
```
cd ~/AutoGIT/noSudo/AutoGIT/bin && chmod +x install.sh && ./install.sh 
```

#### Sudo installation
   If you do **HAVE** access to the **SUDO**, use the following command
```
cd ~/AutoGIT/withSudo/AutoGIT/bin && chmod +x install.sh && ./install.sh 
```

## Uninstallation
#### **NON** Sudo uninstallation
   If you installed AutoGIT **WITH SUDO**, use the following command to uninstall
```
cd ~/AutoGIT/noSudo/AutoGIT/bin && chmod +x uninstall.sh && ./uninstall.sh 
```

#### Sudo uninstallation
   If you installed AutoGIT **WITHOUT SUDO**, use the following command to uninstall
```
cd ~/AutoGIT/withSudo/AutoGIT/bin && chmod +x uninstall.sh && ./uninstall.sh 
```

## Using
   To use autogit, make sure you are in a directory with git initialized, just run the autogit command on a terminal and then perform the actions you want to send the files to the repository linked to your directory.




MADE BY @gustavolbs



# Special Thanks to:

- @ramonssarmento who helped me construct the project.
- @hericlesme who helped me build the installation and uninstallation.
- @ArthurFerrao who helped me with the researchs.
- And thanks to everyone that tested the project and gaved one feedback.
