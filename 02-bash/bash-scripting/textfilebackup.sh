# Script 4: Backup Script for Text Files
# A script that backs up all .txt files from one directory to another.

# Requirements:
# Prompt user for source directory
# Createing a backup directory if it doesn't exist
# Copy all .txt files to the backup directory
# Add timestamp to backup directory name
# Display count of files backed up

#!/bin/bash

# Prompt user for source directory
echo "Enter source directory:"
read source

# Create timestamp
timestamp=$(date +"%Y-%m-%d_%H-%M")

# Create backup directory name
backup="backup_$timestamp"

# Create the backup directory
mkdir -p "$backup"

echo "Backup directory created: $backup"
echo "Copying .txt files..."

# Count the number of .txt files
count=0

# Copy all .txt files
for file in "$source"/*.txt
do
    if [ -f "$file" ]; then
        cp "$file" "$backup"
        count=$((count + 1))
    fi
done

# Display the number of files backed up
echo "Backup complete! Files backed up: $count"
```
