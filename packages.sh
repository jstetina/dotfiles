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


# Other shit
install mp3info

