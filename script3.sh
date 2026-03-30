#!/bin/bash

# List of directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================="
echo "   DIRECTORY AUDIT REPORT"
echo "=============================="

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR"
        echo "Permissions & Owner: $PERMS"
        echo "Size: $SIZE"
        echo "--------------------------"
    else
        echo "$DIR does not exist"
    fi
done

echo "=============================="

