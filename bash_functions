function testing(){
echo "hello"
}

function system-status(){
clear

echo "Memory usage:"
free -h

echo $'\n'$"Disk usage:"
df -h 2>/dev/null

echo $'\n'$"Uptime:"
uptime
}
