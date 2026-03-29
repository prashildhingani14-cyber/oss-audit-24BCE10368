#!/bin/bash

#Script-3: Disk and Permission Auditor
#Author:Prashil Hareshkumar Dhingani
#Course:Open Source Software 

#list of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo " "
echo "        Directory Audit Report           "
echo " "

#doing loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo " "
echo "Checking Git configuration directory"
echo " "

#checking git config directory
if [ -d "$HOME/.git" ]; then
    ls -ld "$HOME/.git"
else
    echo "Git configuration directory not found in home"
fi