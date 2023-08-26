#! /bin/bash

# Hush login
touch ~/.hushlogin

## Update config files

# BASH
cp bashrc ~/.bashrc
cp bashrc ~/.profile

cp bash_aliases ~/.bash_aliases
cp bash_functions ~/.bash_functions

mkdir -p ~/Pictures
cp img/* ~/Pictures

cp send_mail.sh ~
echo "Updated bash config"

cp gitconfig ~/.gitconfig
echo "Updated git config"

mkdir -p ~/.mutt
#cp muttrc ~/.mutt/muttrc
echo "Updated mutt config"

# (n)vim 
cp vimrc ~/.vimrc
echo "Updated vim config"

cp tmux.conf ~/.tmux.conf
echo "updated tmux config"

echo "CHANGES SYNCED"
