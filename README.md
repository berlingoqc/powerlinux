# Power Your Linux 

This is a little project with a script to install/configure the tools you need 
if you want to become a linux power user. This script also add extra documentation
and cheatsheet with the various programs to helps you if you don't have a lot of 
experience in linux.

At the bottom of the README there are various information for how to use those programs.

**VERSIONS** alpha beby
i have not finish at this point
vim , tmux , zsh installation is working so go on.

## What's install ?

So the three main programs for power use of the linux shell are :
* Vim a terminal editor
* Zsh a shell language
* Tmux a terminal multiplexer

And the other are bundles of apps for those fields:
* Network 
* Programming
* Gaming (For the breaks)

## Requirements

This script is made to work on two distributions of linux
* Debian like (who used apt)
* Arch like (who used pacman/aur)
Personnaly , im a big big big fan of arch linux, go read my blog about this if you want
to fall in love to. But i made this script compatible with Debian like for my linux classe
in witch we use Ubuntu ....

## How to use me ?

Very very hard... First , you have to clone this repository
```bash
wquintal@localhost # git clone https://github.com/berlingoqc/powerlinux.git ./ 
```
Secondo , you have to give yourself the execution right like this
```bash
wquintal@localhost # chmod u+x ./powerlinux/install.sh
```
Thirdo , you execute this script :0 :0 with *-h* if you want to see the help or 
if you run this script without arguments it will install all option named above.
```bash
wquintal@localhost # ./powerline/install.sh -h
    Usage of ./install.sh : ./install.sh [args]                                     
    -v Install vim with custom configuration, plugins and cheatsheet
    -z Install zsh with oh-my-zsh with custom alias and cheatsheet
    -t Install tmux with custom configuration and service script
    -p Install programming language and IDE
    -n Install networking tools and cheatsheet
    -a Install all (Default)
    -h Print help       
```

## What are those programs and how they gonna help me ?

Just read this sweet words and be conquered by the power of unix/shell

#### Vim , what i'm i ?

This is a clone of the other popular terminal editor *vi*. 
It stand for Vi iMproved. This program is made to be used with only the
keyboard on a terminal. If you have no idea what this is, i recommend to go
read about it or watch an introduction video on youtube because this is not
your typical text editor. It's very powerful just remember that.

With vim, i haved install vim-plug to manage and download plugins and various
plugins go see the .vimrc to know about theme. I have also download a shit load
of color scheme so go and try to find the best for you.

To learn vim i recommend to sit down and go through **vimtutor** it's install 
with vim. Take notes or use a cheat sheet to help your remind the shortcut but
to really get used to it you need pratice ! So use it without your **mouse** !
 And see your working speed increase :)

#### Zsh , z say hat ?

It's a unix shell made for interactive use. So in other words for common use
and not for script. It's a good alternative to bash for your shell terminal
while still using bash for the script. I love it because of the auto-completion
and the customization available.

#### Tmux , tmux ma vie ?

Tmux is a terminal multiplexer. With this you can split your terminal in multiple
panel and switch between them. It's a great combination with Vim to create a IDE
like experienced with others tools and plugins. Also tmux work like a daemon with
sessions running in the background that you can attach to, this allow you to leave
your working space and attach in to it later with your terminal. 


#### Network what do you got ?

We got application for packet sniffing
* Wireshark : GUI version made with QT
* Tcpdump : cmd line tools equivalent to wireshark

Networking Access
* openssh-client : to connect to an ssh server
* openssh-server : an ssh server
* tigervncserver : a vnc server for remote desktop
* remmina : a vnc client application
* nfs-tools : tools to connect to NFS drive
* smbclient : tools to connect to Samba share

Networking Security
* openvpn : to create vpn tunnel (act as server or client)

Cheatsheet from packetlife.net if you need a reminder for networking

#### Programming what do you got ?

For the section i didn't install lots of ide but more the runtime of the language
i let you choice your ide of choice and remember that Vim will always do the tricks

Python
* Python 2.7 
* Python 3.6
* pip
* virutalenv
* PyCharms
* Idle 

C#
* Mono
* .NET core
* Monodevelop

Java/Android
* Android Studio
* Eclipse

Go
* golang + environnement
* vim/vscode plugins