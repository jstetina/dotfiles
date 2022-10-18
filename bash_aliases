# TEMPERATURE
alias temperature='vcgencmd measure_temp'

# SYSTEMD ALIASES
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
alias lh='ls -ld .?*'
alias gh='history | grep'
