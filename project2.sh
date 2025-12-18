#!/bin/bash

echo "Check disk usage in linux machine server."

# Use correct NVMe partition (adjust p1/p2/p3 based on your machine)
disk_size=$(df -h | grep "/dev/nvme0n1p1" | awk '{print $5}' | cut -d '%' -f1)

echo "$disk_size% of disk is filled"

if [ "$disk_size" -gt 80 ]; then
    echo "Disk is utilized more than 80%"
else
    echo "Enough disk space"
fi