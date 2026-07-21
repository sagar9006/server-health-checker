
#!/bin/bash

echo "=====SERVER HEALTH CHECKER ====="

server_name=$(hostname)
current_time=$(date)
uptime_info=$(uptime -p)

echo "Server Name: $server_name"
echo "Current Time: $current_time"
echo "Uptime: $uptiome_info"


echo ""
echo "===== MEMORY DETAILS ====="
free -h

echo ""
echo "=====DISK DETAILS ====="
df -h /
