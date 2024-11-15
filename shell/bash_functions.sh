function testing(){
echo "hello"
}

function update-config() {
  cd $HOME/dotfiles;
  git switch main;
  git pull origin main;
  ./scripts/update_config.sh;
  cd $OLDPWD;
  source $HOME/.zshrc;
}

function push-config() { 
    cd $HOME/dotfiles
    git push origin main
    cd $OLDPWD
} 

function rb(){
    nohup "$@" &
}

# Display RAM, disk and uptime
function system-status(){
    clear

    echo "Memory usage:"
    free -h

    echo $'\n'$"Disk usage:"
    df -h 2>/dev/null

    echo $'\n'$"Uptime:"
    uptime
}

# Check if domain available
#!/bin/bash 
 
# Name: Check for domain name availability 
# linuxconfig.org 
# Please copy, share, redistribute and improve 

function domain_check(){ 
    if [ "$#" == "0" ]; then 
        echo "You need tu supply at least one argument!" 
        return 0
    fi 
    
    DOMAINS=('.cz' '.com' '.org'  '.eu')
    
    ELEMENTS=${#DOMAINS[@]} 
    
    while (( "$#" )); do 
    
        for (( i=0;i<$ELEMENTS;i++)); do 
            whois $1${DOMAINS[${i}]} | egrep -q '^No match|^NOT FOUND|^Not fo|AVAILABLE|^No Data Fou|has not been regi|No entri' 
            if [ $? -eq 0 ]; 
            then 
                echo "$1${DOMAINS[${i}]} : available" 
            else 
                echo "$1${DOMAINS[${i}]} : registered" 
            fi 

        done     
    shift 
    done
}    

function vim(){
    if command -v nvim &> /dev/null; then
        nvim "$@"
    else
        
        /usr/bin/vim "$@"
    fi
}
# Interactive rename of all files in a given directory
# (also an option to specify the file extensions and only rename those files)
function rename_files() {
    # Check if directory and extensions arguments are provided
    if [ $# -lt 1 ]; then
        echo "Usage: rename_files <directory> [<extension1> <extension2> ...]"
        return 1
    fi

    local directory="$1"
    shift

    # Check if directory exists
    if [ ! -d "$directory" ]; then
        echo "Directory '$directory' not found."
        return 1
    fi

    # Loop through files
    for file in $directory/*; do

        if [ -d $file ]; then 
            continue;
        fi

        echo -n "Enter new name for '$file' (Press Enter to keep the same name): "
        read -r new_name
        if [ -n "$new_name" ]; then
            mv "$file" "$directory/$new_name"
            echo "'$file' renamed to '$new_name'"
        fi
    done

    return 0
}

function tma() {
    tmux attach -t "$1"
}

function knomux() {
    parallel-ssh -l xsteti05 -h $HOME/dotfiles/other/knoties.txt -i '
    result=$(tmux ls 2>/dev/null)
    if [ $? -ne 0 ]; then
        echo "No tmux sessions"
    else
        echo "$result"
    fi
'
}

function knorun() {
    parallel-ssh -l xsteti05 -h $HOME/dotfiles/other/knoties.txt -i "$1"
}



