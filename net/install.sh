#!/bin/bash

source ./func.sh
# Téléchargement et copie des cheat sheet de packet life
FILE="pl.net-cs"
wget "http://media.packetlife.net/media/library/Cheat%20Sheets%20-%20PacketLife.net.zip" -O ${FILE}.zip
unzip ${FILE}.zip
sudo mv ./Cheat* /usr/local/share/cheatsheet/
rm ${FILE}.zip

# Installation d'outils réseaux pour linux
# wireshark , tcpdump , openvnn , openssh client/server (création clé)
install_pkg wireshark-qt
install_pkg openvpn
install_pkg tcpdump
OS=$(detect_os)
[[ $OS == "arch" ]] && sudo pacman -S openssh
