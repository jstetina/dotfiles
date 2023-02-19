# TEMPERATURE
alias temperature='vcgencmd measure_temp'

# SYSTEMD
alias dstat='sudo systemctl status'
alias dstatus='sudo systemctl status'
alias dstart='sudo systemctl start'
alias dstop='sudo systemctl stop'
alias drest='sudo systemctl restart'
alias denable='sudo systemctl enable'
alias dlog='sudo journalctl -e -u'
alias drel='sudo systemctl daemon-reload'

# PACKAGES
alias upup='yes | sudo apt update; yes | sudo apt upgrade'
alias fullup='yes | sudo apt update; yes | sudo apt full-upgrade'

# SSH
alias ci='ssh ironman'
alias cir='remote-ironman'

alias cb='ssh batman' 
alias cbr='ssh batman-remote'

alias fitvpn='sudo openvpn --config ~/vpn/fit.ovpn --auth-user-pass ~/vpn/fit.creds'

# NETWORKING
alias ports='netstat -tulanp'

# NEO4J graph database
alias neo='cypher-shell'

# TMUX
alias tma='tmux a -t'
alias tl='tmux ls'

# FILE SYSTEM
alias up='cd ..'
alias la='ls -la'
alias ll='ls -lh'
alias lh='ls -ld .?*'
alias gh='history | grep'
alias fs='du -shL'
alias fsp='df -h'

# GIT
alias gfc='git add . && git commit -m "fast auto commit" && git push'
