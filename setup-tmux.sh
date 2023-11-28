#! /usr/bin/bash

TMUX_PLUGIN_DIR=$HOME/.tmux/plugins
mkdir -p $TMUX_PLUGIN_DIR
cd $TMUX_PLUGIN_DIR
git pull 2> /dev/null || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm; 
tmux source $HOME/.tmux.conf
