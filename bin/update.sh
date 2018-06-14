#! /bin/bash

cd && cd ~/Documents && git clone https://github.com/gustavolbs/AutoGIT.git

rm -rf ~/.local/bin/atgit
rm -rf ~/.local/etc/AutoGIT

cp  ~/Documents/AutoGIT/usr/atgit ~/.local/bin
mv ~/Documents/AutoGIT ~/.local/etc
