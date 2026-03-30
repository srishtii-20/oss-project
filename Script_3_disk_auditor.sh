#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author:  Srishti | Course: Open Source Software

# -------------------------------
# DIRECTORIES TO CHECK
# -------------------------------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================="
echo "        Directory Audit Report"
echo "======================================="

# -------------------------------
# LOOP THROUGH DIRECTORIES
# -------------------------------
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then

        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        # Print result
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        echo "$DIR does not exist on this system"
    fi

done

echo ""
echo "---------------------------------------"

# -------------------------------
# CHECK PYTHON CONFIG DIRECTORY
# -------------------------------

# Common Python config locations
PYTHON_DIR="/usr/lib/python3"

echo "Checking Python configuration directory..."

if [ -d "$PYTHON_DIR" ]; then
    PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1, $3, $4}')
    echo "Python Config Dir: $PYTHON_DIR"
    echo "Permissions: $PERMS"
else
    echo "Python config directory not found."
fi

echo "======================================="
