#! /bin/bash

# Hush login
touch ~/.hushlogin

## Update config files

# BASH
cp bashrc ~/.bashrc
cp bashrc ~/.profile

cp gitconfig ~/.gitconfig
cp bash_aliases ~/.bash_aliases
cp bash_functions ~/.bash_functions

mkdir -p ~/.mutt
#cp muttrc ~/.mutt/muttrc

cp vimrc ~/.vimrc

# Swaywm
mkdir -p ~/.config/sway
mkdir -p ~/.config/waybar
mkdir -p ~/.config/rofi
cp -r config/* ~/.config

echo "Updated bash_aliases"
echo "CHANGES SYNCED"
