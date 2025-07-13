#!/bin/bash

echo "------ System Information ------"
echo "Hostname       : $(hostname)"
echo "User           : $(whoami)"
echo "Date & Time    : $(date)"
echo "Uptime         : $(uptime -p)"
echo "OS Version     : $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)"
echo "Kernel Version : $(uname -r)"
echo "IP Address     : $(hostname -I)"
echo "Disk Usage     :"
df -h | grep '^/dev'

echo "Memory Usage:"
free -h

echo "------ End of Report ------"

