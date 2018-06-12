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

git config --global credential.helper cache

echo "Quais arquivos quer adicionar ao git? "
echo -n "Arquivos que deseja enviar (use " . " para adicionar todos) " 
read arquivos
git add "$arquivos"

echo 
echo "Qual mensagem que você quer adicionar ao seu commit? "
echo -n "Sua mensagem: " 
read mensagem
git commit -m "$mensagem"

echo 
echo "No próximo passo será necessário entrar com seu usuário e senha do git."
echo "Na próxima vez que executar esse script, não será necessário inserir usuário e senha."  
git push origin master

