# BASH
alias lec='echo $?'


# JOURNALCTL
alias jctl='sudo journalctl'
alias blg='sudo journalctl -b'

# SYSTEMD
alias sctl='sudo systemctl'
alias dstat='sudo systemctl status'
alias dstatus='sudo systemctl status'
alias dstart='sudo systemctl start'
alias dstop='sudo systemctl stop'
alias drest='sudo systemctl restart'
alias denable='sudo systemctl enable'
alias dlog='sudo journalctl -e -u'
alias drel='sudo systemctl daemon-reload'
alias dlt='sudo systemctl list-timers --all'

# PACKAGES
alias upup='yes | sudo apt update; yes | sudo apt upgrade'
alias fullup='yes | sudo apt update; yes | sudo apt full-upgrade'

# SSH
alias ci='ssh ironman'
alias cir='python /home/kuba/.ssh/setup.py; ssh ironman-remote'
alias cb='ssh batman' 
alias cbr='python /home/kuba/.ssh/setup.py; ssh batman-remote'
alias fitvpn='sudo openvpn --config ~/vpn/fit.ovpn --auth-user-pass ~/vpn/fit.creds'

# NETWORKING
alias ports='sudo netstat -tulanp'

# NEO4J graph database
alias neo='cypher-shell'

# TMUX
alias tma='tmux a -t'
alias tl='tmux ls'
alias tk='tmux kill-session -t'

# FILE SYSTEM
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias b='cd $OLDPWD'
alias la='ls -la'
alias ll='ls -lh'
alias l='echo "Current dir: $(pwd)" && ls -lh'
alias lh='ls -ld .?*'
alias gh='history | grep'
alias sd='grep -rnw . -e'
alias fs='du -shL'
alias fsp='df -h'
alias ishere='ls -1 | grep'
alias lsdir='ls -d */'

# GIT
alias gfc='git add . && git commit -m "fast auto commit" && git push'
