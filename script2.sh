#!/bin/bash

# Package name
PACKAGE="python3"

echo "=============================="
echo "   FOSS PACKAGE INSPECTOR"
echo "=============================="

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    echo ""
    echo "Package Details:"
    apt show $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement for description
case $PACKAGE in
    python3)
        echo "Python: a powerful open-source language used in AI, web, and automation."
        ;;
    git)
        echo "Git: version control system for tracking code changes."
        ;;
    vlc)
        echo "VLC: open-source media player supporting all formats."
        ;;
    apache2)
        echo "Apache: web server that powers many websites."
        ;;
    *)
        echo "Unknown package."
        ;;
esac

echo "=============================="
