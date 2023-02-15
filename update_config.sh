#! /bin/bash

# Hush login
touch ~/.hushlogin

# Update config files

cp bashrc ~/.bashrc

cp gitconfig ~/.gitconfig
cp bash_aliases ~/.bash_aliases
cp bash_functions ~/.bash_functions
cp vimrc ~/.vimrc

echo "Updated bash_aliases"
echo "CHANGES SYNCED"
