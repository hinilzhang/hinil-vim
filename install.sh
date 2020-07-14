#!/bin/bash

HINIL_PATH=${PWD}

## Install software
echo ">>>>> Installed [vim] and [curl]"
sudo apt-get install vim curl 

## Copy file
echo ">>>>> Copy [.vim(colors|setting|autoload)] and [.vimrc]"

rm -rf ~/.vimrc
rm -rf ~/.vim
mkdir ~/.vim
cp -r ${HINIL_PATH}/colors   ~/.vim/
cp -r ${HINIL_PATH}/setting  ~/.vim/
cp -r ${HINIL_PATH}/autoload ~/.vim/
cp -r ${HINIL_PATH}/.vimrc   ~/.vimrc 

## Install vim 
vim -c "PlugInstall" -c "q" -c "q"
echo ">>>>> PluggInstalled"

## Finished log
echo ">>>>> Just enjoy it"


