#! /bin/bash

cd && cd ~/Downloads && git clone https://github.com/gustavolbs/AutoGIT.git

rm -rf ~/.local/bin/atgit
rm -rf ~/.local/etc/AutoGIT

cp ~/Downloads/AutoGIT/usr/atgit ~/.local/bin
mv ~/Downloads/AutoGIT ~/.local/etc
