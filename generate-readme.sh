#!/bin/bash

# ✏️ CHANGE this to match your actual GitHub Pages URL
GITHUB_URL="https://pankaj2934.github.io"

# Start README.md content
echo "# HTML Games / Learning Pages" > README.md
echo "" >> README.md
echo "These pages are hosted via GitHub Pages." >> README.md
echo "" >> README.md
echo "## 📄 Available Pages" >> README.md
echo "" >> README.md

# Find all .html files in current directory (non-recursive)
for file in *.html; do
  if [[ -f "$file" ]]; then
    filename="${file%.html}"
    encoded_file=$(printf '%s\n' "$file") # encode spaces
    echo "- [$filename]($GITHUB_URL/$encoded_file)" >> README.md
  fi
done

echo "✅ README.md generated!"