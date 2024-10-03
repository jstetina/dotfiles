#  ______           _            
# (_____ \     _   | |           
#  _____) )___| |_ | | _   ___   
# |  ____/ _  |  _)| || \ /___)  
# | |   ( ( | | |__| | | |___ |  
# |_|    \_||_|\___)_| |_(___/   
                               

CUSTOM_APPS_DIR="$HOME/custom/apps"

# PATH global
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Custom apps
export PATH=$HOME/ngrok/bin:$PATH
export PATH=$CUSTOM_APPS_DIR/cmake/bin:$PATH
export PATH=$CUSTOM_APPS_DIR/zellij:$PATH
export PATH=$CUSTOM_APPS_DIR/nvim/build/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/custom/apps/chezmoi/:$PATH
export PATH=$HOME/custom/apps/zsh/Src:$PATH
export PATH=$HOME/custom/utils:$PATH
export PATH=$HOME/dotfiles/tmux/scripts:$PATH

# PATH knot
export PATH=/home/xsteti05/brew/bin:$PATH
export PATH=/home/xsteti05/miniconda3/bin:$PATH
__conda_setup="$('/home/xsteti05/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/xsteti05/miniconda3/etc/profile.d/conda.sh" ]; then
             . "/home/xsteti05/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/xsteti05/miniconda3/bin:$PATH"
        fi  
fi
unset __conda_setup
