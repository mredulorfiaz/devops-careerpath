#!/bin/bash

# System Information Script (macOS)

echo "System Information:"
echo "------------------"
echo

# Print the hostname
echo "Hostname:"
hostname
echo

# Print the operating system information
echo "Operating System:"
sw_vers -productName
sw_vers -productVersion
echo

# Print the kernel version
echo "Kernel Version:"
uname -r
echo

# Print the CPU information
echo "CPU Information:"
sysctl -n machdep.cpu.brand_string
echo

# Print the memory information
echo "Memory Information:"
system_profiler SPHardwareDataType | grep "Memory:"
echo

# Print the disk usage
echo "Disk Usage:"
df -h
echo

# Print the network interfaces
echo "Network Interfaces:"
ifconfig -a
echo

# Print the logged-in users
echo "Logged-in Users:"
w
echo

# Print the uptime
echo "Uptime:"
uptime
echo

echo "System information printed!"
