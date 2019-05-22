#!/bin/bash

#*******************************************************
# Copy file
rm -rf ~/.vimrc
rm -rf ~/.vim

mkdir ~/.vim
ln -s ${PWD}/colors ~/.vim
ln -s ${PWD}/setting ~/.vim
#ln -s ${PWD}/autoload ~/.vim
ln -s ${PWD}/.vimrc ~ 
#*******************************************************

#*******************************************************
# Download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#*******************************************************

#*******************************************************
# Install vim 
vim -c "PlugInstall" -c "q" -c "q"
echo 'PluggInstalled...'
#*******************************************************

#*******************************************************
# echo log
echo 'Just enjoy it!'
#*******************************************************
