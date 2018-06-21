#! /bin/bash

cd && cd .local/etc/AutoGIT  && git pull origin master

rm -rf ~/.local/bin/atgit
cp -rf ~/.local/etc/AutoGIT/usr/atgit ~/.local/bin
