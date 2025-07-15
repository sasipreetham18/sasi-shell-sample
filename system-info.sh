#!/bin/bash

echo "------ System Information ------"
echo "Hostname        : $(hostname)"
echo "User            : $(whoami)"
echo "Date & Time     : $(date)"
echo "Uptime          : $(uptime -p)"

echo "OS Version      : $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '\"')"
echo "Kernel Version  : $(uname -r)"
echo "IP Address      : $(hostname -I)"

echo "------ Disk Usage ------"
df -h | grep '^/dev'

echo "------ Memory Usage ------"
free -h

echo "------ CPU Load (1, 5, 15 min avg) ------"
uptime | awk -F'load average:' '{ print $2 }'

echo "------ Top 3 Memory Consuming Processes ------"
ps aux --sort=-%mem | head -n 4

echo "------ End of Report ------"

