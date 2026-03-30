#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

# Taking input
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you like to build and share? " BUILD

# Date
DATE=$(date '+%d %B %Y')

# Output file
OUTPUT="manifesto_$(whoami).txt"

# Writing to file
echo "Open Source Manifesto - $DATE" > $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of open source. Tools like $TOOL show how collaboration can change the world." >> $OUTPUT
echo "For me, freedom means $FREEDOM, and it allows developers to innovate without limits." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it with the community." >> $OUTPUT
echo "" >> $OUTPUT
echo "Open source is not just about code, it is about sharing knowledge and growing together." >> $OUTPUT

echo ""
echo "Manifesto saved in file: $OUTPUT"
echo ""

# Display file content
cat $OUTPUT
