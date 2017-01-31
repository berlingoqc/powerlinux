#!/bin/bash

# Fonction pour télécharger les packets selon l'os
# Arch Linux (AUR,pacman) ou Debian-like(apt)

# Détecte l'os
detect_os () {
    which pacman &> /dev/null
    if [[ $? == 0 ]]; then
        OS="arch"
        echo "arch"
    fi   
    which apt &> /dev/null
    if [[ $? == 0 ]]; then
        OS="deb"
        echo "deb"
    else
        echo "Unknown OS...exiting"
        exit 1
    fi
}

install_aur () {
    git clone https://aur.archlinux.org/$1.git
    cd $1
    makepkg -sri
    cd ..
    sudo rm -r $1
}

install_pkg () {
    # Vérification des params
    detect_os
    if [[ $OS == "arch" ]]; then
        if [[ $1 == "aur" ]]; then
              install_aur $2
              return
        fi 
        sudo pacman -S $1
    elif [[ $OS == "deb" ]]; then
        sudo apt install $1
    fi 
}
