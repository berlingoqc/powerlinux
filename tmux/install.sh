#!/bin/bash

source ./func.sh
# Install tmux
install_pkg tmux
# copying tmux configuration file and cheatsheet
cp ./tmux/.tmux.conf $HOME/
# Si on n'est sur arch linux copie le fichier systemd
OS=$(detect_os)
if [[ $OS == "arch" ]]; then
    mkdir -p $HOME/.config/systemd/user/
    cp ./tmux/tmux.service $HOME/.config/systemd/user/
    systemctl --user enable tmux.service
    systemctl --user start tmux.service
fi
