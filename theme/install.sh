#!/bin/bash

# Installation language de prog
source ./func.sh

OS=$(detect_os)

if [[ $OS == "arch" ]]; then
    # Install fonts themes de google avec shit load
    install_aur ttf-google-fonts-git
elif [[ $OS == "deb" ]]; then
    # Install fonts themes de google
    sudo apt-get install fontconfig
    mkdir $HOME/.fonts
    cd ~/.fonts && wget https://github.com/google/fonts/archive/master.zip && unzip master.zip
    fc-cache -fv
fi

