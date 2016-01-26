#!/bin/bash

echo "Getting Vim Pathogen...";
if cd ~/vimrc/bundle/vim-pathogen; then git pull; else git clone https://github.com/tpope/vim-pathogen ~/vimrc/bundle/vim-pathogen; fi
echo "Getting Syntastic...";
if cd ~/vimrc/bundle/syntastic; then git pull; else git clone https://github.com/scrooloose/syntastic ~/vimrc/bundle/syntastic; fi

echo "Creating symbolic link for .vim and .vimrc...";
ln -sfn ~/vimrc/ ~/.vim  # n to replace an existing symlink to directory
ln -sf ~/vimrc/vimrcs/basic.vim ~/.vimrc;
