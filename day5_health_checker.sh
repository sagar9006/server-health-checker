#!/bin/bash

echo "=====SERVER HEALTH CHECKER====="

server_name=$(hostname)
current_time=$(date)
uptime_info=$(uptime -p)

echo "Server Name: $server_name"
echo "Current Time: $current_time"
echo "Uptime info: $uptime_info"


echo ""
echo "===== MEMORY DETAILS ====="
free -h

echo ""
echo "=====DISK DETAILS ====="
df -h /

echo "===== SYSTEM UPTIME ====="
uptime -p


echo ""


echo "===== CPU USAGE ====="
top -bn1 | grep "Cpu(s)"


echo "===== DISK USAGE ====="

disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')


echo "Disk Usage : $disk_usage%"


if [ "$disk_usage" -gt 80 ]
then
   echo "WARNING: Disk Usage is above 80%"

else
   echo "Disk Usage is Normal"
fi



echo "===== MEMORY USAGE ====="

memory_usage=$(free | awk '/Mem:/ {print int($3/$2*100)}')

echo "Current Memory Usage : $memory_usage%"

if [ "$memory_usage" -gt 80 ]
then
   echo "WARNING: Memory Usage is above 80%"

else

   echo "Memory Usage id Normal"
fi


server_name=$(hostname)
current_time=$(date)
uptime_info=$(uptime -p)
disk_usage=$(df / | awk 'NR==2 {print $5}' )
memory_usage=$(free | awk '/Mem:/ {print int($3/$2*100)}')

echo "================================" >> server.log
echo " Time         : $current_time" >> server.log
echo " Server Name  : $server_name" >> server.log
echo " Uptime       : $uptime_info" >> server.log
echo " Disk Usage   : $disk_usage" >> server.log
echo " Memory Usage : $memory_usage%" >> server.log
echo "====================================" >> server.log


echo "Data saved in server.log"

echo "Cron Job Started..."
date
echo "Health Checker Executed Successfully!"


echo "====== SERVER HEALTH REPORT ======"

echo "Project Name : Automate Server Health Checker"
echo "Status       : Completed"
echo "Author       : Sagar Kumar Soni"

echo "========================================="
