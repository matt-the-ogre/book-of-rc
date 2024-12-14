#!/bin/bash

# Check if the file pattern is provided
if [ -z "$1" ]; then
  echo "Usage: $0 '<file-pattern>'"
  exit 1
fi

# Iterate over files matching the given pattern
for file in $1; do
  if [ -f "$file" ]; then
    echo "Processing file: $file"
    
    # Create a backup of the original file
    cp "$file" "${file}.bak"
    
    # Use sed to de-increment headers
    sed -E 's/^(#{2,}) /\1 /' "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
  else
    echo "Skipping $file (not a valid file)"
  fi
done

echo "Header reduction complete. Original files backed up as <filename>.bak."
