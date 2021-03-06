#!/bin/bash

# Installation language de prog
source ./func.sh

OS=$(detect_os)
echo $OS
if [[ $OS == "arch" ]]; then
    # mono + monodevelop
    sudo pacman -S monodevelop
    # .NET core
    # Manque des dépendences de aur pour ce paquet
    #install_aur dotnet-cli
    # Install vscode
    install_aur visual-studio-code
fi
if [[ $OS == "deb" ]]; then
    # .NET core et mono + monodevelop
    sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ yakkety main" > /etc/apt/sources.list.d/dotnetdev.list'
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
    sudo add-apt-repository ppa:ermshiperete/monodevelop
    sudo apt-get update
    sudo apt-get install monodevelop-current
    sudo apt-get install dotnet-dev-1.0.0-preview2.1-003177
    # install vs code
    wget https://go.microsoft.com/fwlink/?LinkID=760868 -O code.deb
    sudo dpkg -i code.deb
    sudo apt-get install -f
    rm code.deb
fi
# Installation de plugins pour vscode
declare -a plug=(\
"HookyQR.beautify" \
"dbankier.vscode-instant-markdown" \
"donjayamanne.python" \
"lukehoban.Go" \
"ms-vscode.csharp" \
"vscodevim.vim")

for i in "${plug[@]}"
do
    code --install-extension "$i"
done
