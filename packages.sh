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

# Sway
install sway
install swaylock
install nautilus
install dolphin
install waybar
install fonts-font-awesome
install rofi
install clang-tidy 
install gobject-introspection 
install libdbusmenu-gtk3-dev 
install libevdev-dev 
install libfmt-dev 
install libgirepository1.0-dev 
install libgtk-3-dev 
install libgtkmm-3.0-dev 
install libinput-dev 
install libjsoncpp-dev 
install libmpdclient-dev 
install libnl-3-dev 
install libnl-genl-3-dev 
install libpulse-dev 
install libsigc++-2.0-dev 
install libspdlog-dev 
install libwayland-dev 
install scdoc 
install upower 
install libxkbregistry-dev
install brightnessctl
install redshift
install grim
install slurp
install wl-clipboard

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
install transmission-cli
install time
install ascii
install mp3info
install grub-customizer
install tree
