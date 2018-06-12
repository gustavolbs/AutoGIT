#! /bin/bash


echo "
 █████╗ ██╗   ██╗████████╗ ██████╗ ███╗   ███╗ █████╗ ████████╗██╗ ██████╗     ██████╗ ██╗████████╗
██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗████╗ ████║██╔══██╗╚══██╔══╝██║██╔════╝    ██╔════╝ ██║╚══██╔══╝
███████║██║   ██║   ██║   ██║   ██║██╔████╔██║███████║   ██║   ██║██║         ██║  ███╗██║   ██║   
██╔══██║██║   ██║   ██║   ██║   ██║██║╚██╔╝██║██╔══██║   ██║   ██║██║         ██║   ██║██║   ██║   
██║  ██║╚██████╔╝   ██║   ╚██████╔╝██║ ╚═╝ ██║██║  ██║   ██║   ██║╚██████╗    ╚██████╔╝██║   ██║   
╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝     ╚═════╝ ╚═╝   ╚═╝   "

echo 
echo 
echo 

# This code part will get your credentials and store them.
git config --global credential.helper cache

# This will set to send all the pushs to the current branch.
git config --global push.default current

# This will ask you what files you want to send to git.
echo "Quais arquivos quer adicionar ao git? "
echo -n "Arquivos que deseja enviar (use " . " para adicionar todos): " 
read -e arquivos
git add "$arquivos"

# This will ask you the message for the commit.
echo 
echo "Qual mensagem que você quer adicionar ao seu commit? "
echo -n "Sua mensagem: " 
read mensagem
git commit -m "$mensagem"

# This will ask you your username and password just one time. After then, it will send the files
# to the master branch of your repositorie of git without ask your credentials.
echo 
echo "No próximo passo será necessário entrar com seu usuário e senha do git."
echo "Na próxima vez que executar esse script, não será necessário inserir usuário e senha."  
git push

