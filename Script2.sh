#!/bin/bash

#Script-2: FOSS Package Inspector
#Author:Prashil Hareshkumar Dhingani
#Course:Open Source Software 

#package name
PACKAGE="git"

#we will check if package is installed or not
if dpkg -l | grep -w "$PACKAGE" > /dev/null 2>&1; then 
    echo "$PACKAGE is installed."
    dpkg -l | grep -w "$PACKAGE"
    echo "Version information:"
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

#using case statement for package description
case $PACKAGE in
    git)
        echo "Git: an open-source version control system created to track code changes efficiently.";;
    apache2)
        echo "Apache: the web server that helped build the open internet.";;
    mysql-server)
        echo "MySQL: an open-source database used in many real-world applications.";;
    firefox)
        echo "Firefox: an open-source browser that supports an open and accessible web.";;
    vlc)
        echo "VLC: an open-source media player that can play almost any audio or video format.";;
    *)
        echo "No philosophy note available for this package.";;
esac