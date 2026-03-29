#!/bin/bash

#Script-1:System Identity Report
#Author:Prashil Hareshkumar Dhingani
#Course:Open Source Software

#variables(student/project information)
STUDENT_NAME="Prashil Hareshkumar Dhingani"
SOFTWARE_CHOICE="Git"

#system information
KERNEL_VERSION=$(uname -r)   #kernel version
USER_NAME=$(whoami)  #current logged in user
UPTIME=$(uptime -p)  #uptime of system in readable format
HOME_DIR="$HOME"   #home directory of current user

# Current date and time
CURRENT_DATE_TIME=$(date "+%d-%m-%Y %I:%M:%S %p")

# Linux distribution name
if [ -f /etc/os-release ]; then  #we are identifying linux distribution details
    DISTRO_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO_NAME="Unknown Linux Distribution"
fi

# License message
OS_LICENSE_MESSAGE="Linux is open-source and uses the GPL license."


#display 
echo " "
echo "                OPEN SOURCE SYSTEM IDENTITY REPORT            "
echo " "
echo "Student Name  : $STUDENT_NAME"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Linux Distribution : $DISTRO_NAME"
echo "Kernel Version : $KERNEL_VERSION"
echo "Logged-in User : $USER_NAME"
echo "Home Directory : $HOME_DIR"
echo "System Uptime : $UPTIME"
echo "Current Date & Time : $CURRENT_DATE_TIME"
echo " "
echo "License Information :"
echo "$OS_LICENSE_MESSAGE"
