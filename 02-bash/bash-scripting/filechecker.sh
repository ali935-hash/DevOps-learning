# Script 3: File Checker with Permissions
# A script that checks if a file exists and displays its permissions.

# Requirements:
# Prompt user for a filename
# Check if the file exists
# If it exists, check if it's readable, writable, and executable
# Display appropriate messages for each permission


#!/bin/bash

echo "Enter filename to check:"
read filename

# Check if the file exists, line 23 is a bash test -e asks the OS whether the path exists or not.
if [ -e "$filename" ]; then
    echo "File '$filename' exists."

    # Check if the file is readable using -r
    if [ -r "$filename" ]; then
        echo "✓ File is readable"
    else
        echo "✗ File is not readable"
    fi

    # Check if the file is writable using -w
    if [ -w "$filename" ]; then
        echo "✓ File is writable"
    else
        echo "✗ File is not writable"
    fi

    # Check if the file is executable using -x
    if [ -x "$filename" ]; then
        echo "✓ File is executable"
    else
        echo "✗ File is not executable"
    fi

else
    echo "File '$filename' does not exist."
fi