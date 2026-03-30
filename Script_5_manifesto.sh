#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Srishti | Course: Open Source Software

echo "---------------------------------------"
echo " Open Source Manifesto Generator"
echo "---------------------------------------"
echo ""

# -------------------------------
# USER INPUT
# -------------------------------

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# -------------------------------
# GENERATE OUTPUT FILE
# -------------------------------

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

# -------------------------------
# CREATE MANIFESTO
# -------------------------------

echo "---------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "Author: $USER" >> $OUTPUT
echo "---------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source." >> $OUTPUT
echo "Every day, I rely on tools like $TOOL which are freely available to everyone." >> $OUTPUT
echo "To me, freedom means $FREEDOM, and it should apply to software as well." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it with the world without restrictions." >> $OUTPUT
echo "Open source allows people to learn, collaborate, and innovate together." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
