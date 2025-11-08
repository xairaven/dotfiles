#!/bin/bash

# This script comments out the line that makes symlink icons
# on the KDE Plasma desktop use italic text.
# It must be run with sudo privileges.

FILE_PATH="/usr/share/plasma/plasmoids/org.kde.desktopcontainment/contents/ui/FolderItemDelegate.qml"
SEARCH_STRING="font.italic: (model?.isLink ?? false)"

# 1. Check for root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Error: This script must be run as root (use sudo)."
  exit 1
fi

# 2. Check if the target file exists
if [ ! -f "$FILE_PATH" ]; then
  echo "Error: File not found: $FILE_PATH"
  echo "This script is intended for KDE Plasma. Aborting."
  exit 1
fi

# 3. Check if the line is already commented out
# We check for the string, ignoring leading whitespace, to see if it already starts with //
if grep -q "^\s*//\s*$SEARCH_STRING" "$FILE_PATH"; then
  echo "Change has already been applied. No action taken."
  exit 0
fi

# 4. Check if the line exists and is NOT commented
if grep -q "^\s*$SEARCH_STRING" "$FILE_PATH"; then
  echo "Found line to modify. Creating backup..."
  
  # 5. Create a backup
  cp "$FILE_PATH" "$FILE_PATH.bak"
  if [ $? -ne 0 ]; then
      echo "Error: Failed to create backup. Aborting."
      exit 1
  fi
  echo "Backup created: $FILE_PATH.bak"
  
  # 6. Perform the modification using sed
  # This finds the line (allowing for leading spaces) and prepends '//'
  # It uses '#' as a delimiter because the replacement string contains '/'
  sed -i 's|^\([ \t]*\)'"$SEARCH_STRING"'|\1//'"$SEARCH_STRING"'|' "$FILE_PATH"
  
  if [ $? -eq 0 ]; then
      echo "Successfully patched the file."
      echo "Please restart your Plasma session (log out and log back in) to see the changes."
  else
      echo "Error: Failed to patch the file."
      exit 1
  fi
else
  echo "Error: Could not find the line '$SEARCH_STRING' in the file."
  echo "The file content may have changed. Aborting."
  exit 1
fi
