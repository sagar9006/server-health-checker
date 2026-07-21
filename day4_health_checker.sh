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

echo "===== SYSTEM UPTIME ====="
UPTIME -P


echo ""


echo "===== CPU USAGE ====="
top -bn1 | grep "Cpu(s)"


echo "===== DISK USAGE ====="
dick_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')


echo "Current Disk Usage : $disk_usage%"


if ["$disk_usage" -gt 80]
then
   echo "WRITING: Disk Usage is above 80%"

echo
   echo :Disk Usage is Normal"
fi



echo "===== MEMORY USAGE ====="

memory_usage=$(free | awk '/Mem:/ {print int($3/$2*100)}')

echo "Current Memory Usage : $memory_usage%"

if [ "$memory_usage" -gt 80 ]
then
   echo "WARNING: Memory Usage is above 80%"

echo

   echo "Memory Usage id Normal"
fi
