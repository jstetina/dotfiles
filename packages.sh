#! /bin/bash

function install(){
  sudo apt install -y $1;
}

sudo apt update -y
sudo apt upgrade -y

# Python
install python3

# C programming
install gcc
install gdb
install make

# Git 
install git

# MULTIPLEXERS
install screen
install tmux

# Processes
install htop

# Tar 
install tar

# Whois 
install whois

# Maps 
install snapd
sudo snap install core
sudo snap install mapscii

# NPM pack. manager
install nodejs
install npm

# Wikipedia tool
sudo npm install wikit -g


