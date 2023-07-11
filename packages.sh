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

# MULTIPLEXERS
install screen
install tmux

# Processes
install htop
install time

# Tar 
install tar

# Ctl 
install pactl

# Whois 
install whois

# Other utils
install moreutils
install transmission-cli
install time
install ascii
install mp3info
install grub-customizer
install tree
install speedtest-cli
