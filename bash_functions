function testing(){
echo "hello"
}

function system-statu(){
clear

echo "Memory usage:"
free -h

echo $'\n'$"Disk usage:"
df -h /dev/sd[a-z][1-9] 2>/dev/null

echo $'\n'$"Uptime:"
uptime
}

