#!/bin/bash

source ./func.sh

# Install vim
install_pkg vim
# Télécharge vim-plug
if [ -d $HOME/.vim ]; then
    sudo rm -r $HOME/.vim
fi
cp ./vim/.vimrc $HOME/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/flazz/vim-colorschemes.git
mkdir $HOME/.vim/colors
mv ./vim-colorschemes/colors/* $HOME/.vim/colors/
sudo rm -r ./vim-colorschemes

