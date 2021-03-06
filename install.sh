#!/bin/bash

source ./func.sh
# Assure que dialog est installer sur le systeme
# need curl , wget , git , unzip
#Script d'installation
usage () {
    cat <<EOF
    Usage of $0 : $0 [args]
    -v Install vim with custom configuration, plugins and cheatsheet
    -z Install zsh with oh-my-zsh with custom alias and cheatsheet
    -t Install tmux with custom configuration and service script
    -p Install programming language and IDE
    -n Install networking tools and cheatsheet
    -f Install fonts and GTK themes
    -s Install various terminal
    -a Install all (Default)
    -h Print help 
EOF
}

# Assure que le dossier partagé /usr/share/cheatsheet existe
CSFOLD="/usr/share/cheatsheet"
if [ ! -d $CSFOLD ]; then
    sudo mkdir $CSFOLD
    sudo chmod 0755 $CSFOLD
fi

[ $# -eq 0 ] && { echo "Default installation ! Go grap a coffee it can be long"; ./$0 -v -z -t -p -n -f -s; exit 0; }
while (( $# > 0 )); do
    case "$1" in
        -v)
            ./vim/install.sh
        ;;
        -z)
            ./zsh/install.sh
        ;;
        -t)
            ./tmux/install.sh
        ;;
        -p)
            ./prog/install.sh
        ;;
        -n)
            ./net/install.sh
        ;;
        -s)
            ./terminal/install.sh
        ;;
        -f)
            ./theme/install.sh
        ;;
        -a)
            ./$0 -v -z -t -p -n -f -s
        ;;
        -h|*)
            usage
            exit 1;
        ;;
    esac
    shift 1
done

exit 0

