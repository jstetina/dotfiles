#! /bin/bash

# Hush login
touch ~/.hushlogin

## Update config files

# BASH
cp bashrc ~/.bashrc
cp bashrc ~/.profile

cp bash_aliases ~/.bash_aliases
cp bash_functions ~/.bash_functions

cp send_mail.sh ~
echo "Updated bash config"

cp gitconfig ~/.gitconfig
echo "Updated git config"

mkdir -p ~/.mutt
#cp muttrc ~/.mutt/muttrc
echo "Updated mutt config"

cp vimrc ~/.vimrc
echo "Updated vim config"

# Swaywm
echo "Updated sway config"
mkdir -p ~/.config/sway
mkdir -p ~/.config/waybar
mkdir -p ~/.config/rofi
cp -r config/* ~/.config

echo "CHANGES SYNCED"
