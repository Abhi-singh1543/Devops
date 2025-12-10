#!/bin/bash
#Author: Abhishek
#Installing multiple packages.

if [[ $# -eq 0 ]]; then
    echo "Please provide software name from the command line arguments"
    exit 1
fi

# Missing space before closing ]]
if [[ $(id -u) -ne 0 ]]; then
    echo "Please run as root user or with SUDO privileges."
    exit 2
fi

for software in "$@"
do
    if which "$software" &> /dev/null; then
        echo "Already installed: $software"
    else
        echo "Installing $software....."
        yum install -y "$software" &> /dev/null
        
        # Success check needs echo, not direct string
        if [[ $? -eq 0 ]]; then
            echo "Successfully installed $software package."
        else
            echo "Unable to install $software"
        fi
    fi
done