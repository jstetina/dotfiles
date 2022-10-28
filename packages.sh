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

# MULTIPLEXERS
install screen
install tmux

# Processes
install htop

# Tar 
install tar

# Git 
install git

# Maps 
install mapscii

# NPM pack. manager
install nodejs
install npm

# Wikipedia tool
sudo npm install wikit -g


