#!/bin/bash

source ./func.sh
# Téléchargement et copie des cheat sheet de packet life
FILE="pl.net-cs"
wget "http://media.packetlife.net/media/library/Cheat%20Sheets%20-%20PacketLife.net.zip" -O ${FILE}.zip
unzip ${FILE}.zip
sudo mv ./Cheat* /usr/local/share/cheatsheet/
rm -r Cheat\ Sheets\ -\ PacketLife.net

# Installation d'outils réseaux pour linux
# wireshark , tcpdump , openvnn , openssh client/server (création clé)
install_pkg wireshark-qt
install_pkg openvpn
install_pkg tcpdump
OS=$(detect_os)
if [[ $OS == "arch" ]]; then
    sudo pacman -S openssh
elif [[ $OS == "deb" ]]; then
    sudo apt install openssh-client openssh-server
fi

