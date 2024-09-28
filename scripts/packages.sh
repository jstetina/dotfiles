#! /bin/bash

function install(){
    sudo apt install -y $1;
}

echo "Updating apt repo";
sudo apt update -y
sudo apt full-upgrade -y

echo "Downloading packages";

# Python
install python3
install python3-pip

# C programming
install gcc
install gdb
install make
install cmake

# Editors
install vim

# Git, github 
install git
install gh
install tig
install git-ftp

# Connections
install wget
install curl
install openvpn
install tor
install torsocks
install net-tools
install openvpn
install mutt
install mosh
install whois

# MULTIPLEXERS
install screen
install tmux

# Processes
install htop
install btop
install time

# Archiving, compression 
install tar
install zip
install gzip
install p7zip-full p7zip-rar
install rar unrar

# Build tools
install build-essentials
install prcps 
install curl
install file

# Ctl 
install pactl

# Other utils
install nala
install poppler-utils
install npm
install nodejs
install fcrackzip
install moreutils
install exiftool
install transmission-cli
install zsh-syntax-highlighting
install time
install ascii
install mp3info
install grub-customizer
install tree
install speedtest-cli
install jq
