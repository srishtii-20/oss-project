#!/bin/bash

# Script 1: System Identity Report
# Author: Srishti | Course: Open Source Software

# -------------------------------
# VARIABLES (User Input)
# -------------------------------
STUDENT_NAME="Srishti"
SOFTWARE_CHOICE="Python"

# -------------------------------
# SYSTEM INFORMATION
# -------------------------------

# Kernel version
KERNEL=$(uname -r)

# Current user
USER_NAME=$(whoami)

# Home directory of user
HOME_DIR=$HOME

# System uptime (pretty format)
UPTIME=$(uptime -p)

# Current date and time
CURRENT_DATE=$(date)

# Linux distribution name
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# -------------------------------
# DISPLAY OUTPUT
# -------------------------------

echo "======================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "======================================="

echo "Software Chosen : $SOFTWARE_CHOICE"
echo ""

echo "Operating System : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo ""

echo "Logged-in User   : $USER_NAME"
echo "Home Directory   : $HOME_DIR"
echo ""

echo "System Uptime    : $UPTIME"
echo "Current Date/Time: $CURRENT_DATE"
echo ""

# -------------------------------
# LICENSE INFORMATION
# -------------------------------

echo "License Info:"
echo "This Linux system is based on open-source software"
echo "and is generally distributed under the GNU General Public License (GPL)."

echo "======================================="
