#!/bin/bash

echo "Hi $USER"
echo "I'm just going to move some files around and stuff."

if [ -f ~/.vimrc ]
then
    echo "You have a .vimrc file. Backing up..."
    cp ~/.vimrc ~/.vimrc_backup;
    echo "Your old vim config in ~/.vimrc_backup"
fi

if [ -d ~/.vim ]
then
    echo "You have a .vim folder. Backing dat up..."
    #mkdir ~/.vim_backup
    echo "Need your password for \"sudo cp -r ~/.vim/* ~/.vim_backup/\""
    sudo cp -r ~/.vim/* ~/.vim_backup/
    echo "Your old .vim folder is backed up to ~/.vim_backup"
    rm -rf ~/.vim
fi

mkdir ~/.vim
echo "Using sudo for copy operations...."
sudo cp ./.vimrc ~/.vimrc;
sudo cp -a ./.vim/. ~/.vim

