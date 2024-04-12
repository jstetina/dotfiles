 export PATH="$HOME/nvim/bin/:$PATH"
 
# PATH global
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/ngrok/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=$HOME/zellij:$PATH

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
