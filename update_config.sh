#! /bin/bash

# Hush login
touch ~/.hushlogin

# Update config files

cp bashrc ~/.bashrc
cp bashrc ~/.profile

cp gitconfig ~/.gitconfig
cp bash_aliases ~/.bash_aliases
cp bash_functions ~/.bash_functions

mkdir -p ~/.mutt
#cp muttrc ~/.mutt/muttrc

cp vimrc ~/.vimrc

mkdir -p ~/.config/sway
cp sway/config ~/.config/sway/config

echo "Updated bash_aliases"
echo "CHANGES SYNCED"
