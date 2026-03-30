#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Srishti | Course: Open Source Software

# -------------------------------
# USER INPUT
# -------------------------------

# Ask user to enter package name
read -p "Enter package name (e.g., python3, git, vlc): " PACKAGE

echo ""
echo "Checking package: $PACKAGE"
echo "--------------------------------"

# -------------------------------
# CHECK IF PACKAGE IS INSTALLED
# -------------------------------

# For Debian/Ubuntu systems (like most setups)
if dpkg -l | grep -w "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."

    # Show important details
    dpkg -l | grep -w "$PACKAGE"
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# -------------------------------
# CASE STATEMENT (FOSS INFO)
# -------------------------------

echo "About the package:"

case $PACKAGE in
    python3)
        echo "Python: A powerful open-source programming language focused on readability and simplicity."
        ;;
    git)
        echo "Git: A distributed version control system created to manage code efficiently."
        ;;
    vlc)
        echo "VLC: An open-source media player that can play almost any audio/video format."
        ;;
    firefox)
        echo "Firefox: An open-source web browser developed to promote a free and open web."
        ;;
    *)
        echo "No specific description available for this package."
        ;;
esac

echo "--------------------------------"
echo "Inspection complete."
