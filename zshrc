# ENV VARS
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=$(which vim)
export VISUAL=$(which vim)
export ARCHFLAGS="-arch x86_64"

# Path
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/ngrok/bin:$PATH

zstyle ':omz:update' mode auto # auto update
zstyle ':omz:update' frequency 10

ZSH_THEME="awesomepanda"
CASE_SENSITIVE="true"

DISABLE_MAGIC_FUNCTIONS="false"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"

# Plugin manager 
source $HOME/.oh-my-zsh/antigen.zsh 
antigen bundle zsh-users/zsh-autosuggestions

plugins=(
    git
    pip
    mosh
    rsync
    zsh-navigation-tools
    colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# User configuration
# PROMPT
eval orange='$FG[202]'
eval purple='$FG[098]'
eval yellow='$FG[228]'

# Command return status
local ret_status="%(?:%{$fg_bold[green]%}❯ :%{$fg_bold[red]%}✕ %s)%{$reset_color%}"
PROMPT='%{$fg_bold[green]%}%m%{$reset_color%} [%B%{$orange%}$(date +%H:%M)%{$reset_color%}%b] %{$fg_bold[blue]%}$(git_prompt_info)%}%{$fg_bold[blue]%}%1~%{$reset_color%} ${ret_status} '

# Aliases
source $HOME/.bash_aliases

# Syntax highlighting plugin (MUST BE AT THE END!)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
