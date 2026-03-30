#!/bin/bash

# Script 4: Log File Analyzer
# Author: Srishti | Course: Open Source Software

# -------------------------------
# INPUT ARGUMENTS
# -------------------------------

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword = error
COUNT=0

# -------------------------------
# CHECK IF FILE EXISTS
# -------------------------------

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# -------------------------------
# CHECK IF FILE IS EMPTY (RETRY)
# -------------------------------

if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Retrying in 3 seconds..."
    sleep 3

    if [ ! -s "$LOGFILE" ]; then
        echo "File is still empty. Exiting."
        exit 1
    fi
fi

# -------------------------------
# READ FILE LINE BY LINE
# -------------------------------

while IFS= read -r LINE; do

    # Check if line contains keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# -------------------------------
# OUTPUT RESULT
# -------------------------------

echo "---------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "---------------------------------------"

# -------------------------------
# SHOW LAST 5 MATCHING LINES
# -------------------------------

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
