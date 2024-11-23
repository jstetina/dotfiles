# BASH
alias lec='echo $? '

# ZSH 
alias szrc='source $HOME/.zshrc'

# JOURNALCTL
alias jctl='sudo journalctl '
alias blg='sudo journalctl -b '

# EDITORS
alias v='vim'

# SYSTEMD
alias sctl='sudo systemctl '
alias jctl='sudo journalctl '
alias dstat='sudo systemctl status '
alias dstatus='sudo systemctl status '
alias dstart='sudo systemctl start '
alias dstop='sudo systemctl stop '
alias drest='sudo systemctl restart '
alias denable='sudo systemctl enable '
alias ddisable='sudo systemctl disable '
alias dlog='sudo journalctl -e -u '
alias drel='sudo systemctl daemon-reload '
alias dfol='sudo journalctl -f -u' 
alias dlt='sudo systemctl list-timers --all '

# DOCKER
alias docker='sudo docker '
alias dckr='sudo docker '
alias dps='docker ps'
alias dpsa='docker ps -a'
alias d='sudo docker '
alias dim='sudo docker images '
alias dps='sudo docker ps'
alias dpsa='sudo docker ps -a'
alias dsprn='sudo docker system prune -a'
alias ds='sudo docker stop '
alias dst='sudo docker start '
alias drmi='sudo docker rmi '
alias dcs='sudo docker compose up -d '
alias dsl='sudo docker service ls'
alias dsrm='sudo docker service rm '
alias dslo='sudo docker service logs '
alias dnls='sudo docker node ls'
alias dnlsl='docker node ls -q | xargs docker node inspect \
  -f "{{ .ID }} [{{ .Description.Hostname }}]: {{ .Spec.Labels }}"'
alias shd='\
    cd $HOME/projects/smart_home && \
    sudo docker stack deploy -c stack-compose.yml smart_home_stack --detach=true; \
    docker service update smart_home_stack_rev_proxy; \
    cd $OLDPWD'

# PACKAGES
alias sai='sudo apt install -y '
alias sar='sudo apt remove -y '
alias upup='sudo apt -y update; sudo apt -y full-upgrade '
alias nala='sudo nala'


# SSH
alias ci='ssh ironman '
alias ct='ssh tantalus '
alias ctr='ssh triton'
alias s='ssh '
alias sa='ssh athena'
alias sp='ssh pcknot'

# Parallel SSH
alias pssh='parallel-ssh '
alias rr='parallel-ssh -l kuba -h $HOME/dotfiles/other/rpis.txt -i '

# MOSH
alias mi='mosh ironman'

# NETWORKING
alias ports='sudo ss -tulanp '
alias iptables='sudo iptables '
alias fitvpn='sudo openvpn --config ~/vpn/fit.ovpn --auth-user-pass ~/vpn/fit.creds '

# NEO4J graph database
alias neo='cypher-shell '

# TMUX
# alias tma moved to bash_functions.sh
alias tl='tmux ls '
alias tk='tmux kill-session -t '
alias tm='tmux '
alias tks='tmux kill-server '
alias trs='tmux rename-session '
alias trw='tmux rename-window '

# Zellij
alias z='zellij ' 
alias zls='zellij list-sessions'
alias zla='zellij attach'
alias za='zellij attach'
alias zdas='zellij delete-all-sessions'


# FILE SYSTEM
alias up='cd .. '
alias up2='cd ../.. '
alias up3='cd ../../.. '
alias b='cd $OLDPWD '
alias t='tree '
alias ls='ls --color=auto '
alias la='ls --color=auto -la '
alias l='echo "Current dir: $(pwd)" && ls -lh '
alias lh='ls --color=auto -ld .?* '
alias sehi='history | grep '
alias sd='grep -rnw . -e '
alias dirsize='du -shL '
alias dirsizes='du -h --max-depth=1 '
alias freesp='df -h '
alias freespace='df -h '
alias ishere='ls --color=auto -1 | grep '
alias lsdir='ls -d */ '
alias lines='wc -l '
alias linesin='wc -l '
alias ll='eza -l --git'
alias llg='eza --git-repos --git -l'
alias llm='eza -l -M'
alias exp='dolphin . '

# GIT
alias g='git '
alias gs='git status'
alias gfc='git add . && git commit -m "fast auto commit" && git push '
alias gpl='git pull'
alias gpsh='git push'
alias gl='git log --oneline'
alias glg='git log --name-status'
alias gc='git commit -m '
alias gca='git commit --amend'
alias gpom='git push origin main'

