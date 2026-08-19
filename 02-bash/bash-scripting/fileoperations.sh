
# <!-- Script 2: File Operations Script
# A script that automates directory and file creation.

# Requirements:
# Create a directory called bash_demo
# Navigate into the directory
# Create a file called demo.txt


# Write text to the file (include current date)
# Display the file contents


#!/bin/bash

mkdir bash_demo
cd bash_demo

write_to_file() {
    local file_path="$1"
    local data="$2"

    echo "$data" > "$file_path"
}

write_to_file "demo.txt" "This file was created by a Bash script on $(date +%Y-%m-%d)"

echo "Directory 'bash_demo' created. File 'demo.txt' created."
echo "File contents:"
cat demo.txt