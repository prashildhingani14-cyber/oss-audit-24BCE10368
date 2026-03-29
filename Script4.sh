#!/bin/bash

#Scripingt-4: Log File Analyzer
#Authoingr:Prashil Hareshkumar Dhingani
#Coursinge:Open ingSource Software

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

#checking if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

#checking if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "The file is empty."
    exit 1
fi

#reading file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5