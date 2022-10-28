function testing(){
echo "hello"
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
    
    DOMAINS=('.cz' '.sk' '.com' '.org'  '.eu')
    
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

