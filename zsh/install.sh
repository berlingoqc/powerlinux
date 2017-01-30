#!/bin/bash
source ./func.sh
# Install zsh
install_pkg zsh
# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# Append mon fichier conf a lui generer
cat ./.zshrc >> $HOME/.zshrc
