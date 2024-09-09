#! /bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

SHELL_DIR=../shell
SSH_DIR=../ssh
OTHER_DIR=../other
GIT_DIR=../git
IMG_DIR=../img

touch ~/.hushlogin

# Shell config
cp $SHELL_DIR/zshrc ~/.zshrc
curl -s -L git.io/antigen > ~/.oh-my-zsh/antigen.zsh 
#cp bashrc ~/.bashrc
#cp bashrc ~/.profile
cp $SHELL_DIR/bash_aliases ~/.bash_aliases
cp $SHELL_DIR/bash_functions ~/.bash_functions


# SSH config
cp $SSH_DIR/ssh-conf $HOME/.ssh/config
cp -r $SSH_DIR/conf.d $HOME/.ssh/
echo "Updated ssh config"

mkdir -p ~/Pictures
cp $IMG_DIR/* ~/Pictures

cp send_mail.sh ~
echo "Updated shell config"

cp $GIT_DIR/gitconfig ~/.gitconfig
echo "Updated git config"

#mkdir -p ~/.mutt
#cp $OTHER_DIR/muttrc ~/.mutt/muttrc
#echo "Updated mutt config"

# (n)vim 
cp $OTHER_DIR/vimrc ~/.vimrc
echo "Updated vim config"

cp $OTHER_DIR/tmux.conf ~/.tmux.conf
echo "updated tmux config"

echo "CHANGES SYNCED"
