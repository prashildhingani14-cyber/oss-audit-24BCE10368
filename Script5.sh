#!/bin/bash

#Script 5: Open Source Manifesto Generator
#Author: Prashil Hareshkumar Dhingani
#Course: Open Source Software

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1.name one open-source tool you use every day: " TOOL
read -p "2.in one word, what does freedom mean to you? " FREEDOM
read -p "3.name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

#example alias: alias ll='ls -l'

#writing manifesto to file
echo "Open Source Manifesto" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I use $TOOL in my daily life, and it reminds me that open source is not only about code but also about $FREEDOM.If i have the opportunity,i would build and freely share $BUILD so that others could learn, improve it, and benefit from it. I believe open source encourages collaboration, creativity,and equal access to technology for everyone." >> "$OUTPUT"
echo " "
echo "Manifesto saved to $OUTPUT"
echo " "
cat "$OUTPUT"