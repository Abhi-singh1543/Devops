# Script to install software in multiple flaviour of OS
#!/bin/bash

echo "Script to install git"
echo "Installation started..."

if [ "$(uname)" == "Linux" ]; then
    echo "This is Linux box, Installing git..."
    yum install git -y

elif [ "$(uname)" == "Darwin" ]; then
    echo "This is MacOS"
    echo "Installing..."
    brew install git

else
    echo "Not Installing"
fi
