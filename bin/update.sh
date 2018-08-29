#! /bin/bash

pwd=$(pwd)
cd ~/.local/etc/AutoGIT  && git pull -f origin master
rm -rf ~/.local/bin/atgit
cp -rf ~/.local/etc/AutoGIT/usr/atgit ~/.local/bin
cd pwd
