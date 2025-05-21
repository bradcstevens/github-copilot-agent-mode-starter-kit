#!/bin/bash

# Script to add quotes around description values in instruction files

# Directory containing the instruction files
INSTRUCTIONS_DIR=".github/instructions"

# Find all .md files in the instructions directory
for file in $INSTRUCTIONS_DIR/*.instructions.md; do
  echo "Processing $file"
  
  # Check if the file exists and is readable
  if [ -r "$file" ]; then
    # Check if the file has a description line without quotes
    if grep -q "^description: [^\"']" "$file"; then
      # Get the description line
      desc_line=$(grep -m 1 "^description: " "$file")
      
      # Extract the description value (everything after "description: ")
      desc_value="${desc_line#description: }"
      
      # Create the new line with quoted description
      new_line="description: \"$desc_value\""
      
      # Replace the old line with the new line
      sed -i '' "s/^description: .*/$new_line/" "$file"
      
      echo "Updated $file"
    else
      echo "Skipping $file (already has quotes or no description found)"
    fi
  else
    echo "Error: Cannot read $file"
  fi
done

echo "Update complete" 