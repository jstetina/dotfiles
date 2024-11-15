#! /bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

DOTFILES_DIR=..
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
cp $SHELL_DIR/bash_aliases.sh ~/.bash_aliases.sh
cp $SHELL_DIR/bash_functions.sh ~/.bash_functions.sh


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

# vim
cp $OTHER_DIR/vimrc ~/.vimrc
echo "Updated vim config"

# neovim
cp -r "$OTHER_DIR/nvim" "$HOME/.config"
echo "Updated nvim config"

cp $DOTFILES_DIR/tmux/tmux.conf ~/.tmux.conf
echo "updated tmux config"

echo "CHANGES SYNCED"
