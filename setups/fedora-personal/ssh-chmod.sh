#!/bin/bash
#
# Securely sets permissions for the ~/.ssh directory and all its contents,
# no matter the sub-directory structure.
#
# Run this script as your regular user, NOT as root or with sudo.

SSH_DIR="$HOME/.ssh"

# 1. Set the ~/.ssh directory itself.
# Must be 700 (drwx------).
echo "Setting $SSH_DIR to 700"
chmod 700 "$SSH_DIR"

# 2. Set all sub-directories.
# Must be 700 (drwx------).
echo "Setting all sub-directories to 700"
find "$SSH_DIR" -type d -exec chmod 700 {} \;

# 3. Set all files to 600 (-rw-------) as a secure default.
# This includes private keys, config files, known_hosts, etc.
echo "Setting all files to 600"
find "$SSH_DIR" -type f -exec chmod 600 {} \;

# 4. Set all public keys (.pub files) to 644 (-rw-r--r--).
# This is safe and standard, as they are meant to be public.
echo "Setting all *.pub files to 644"
find "$SSH_DIR" -type f -name "*.pub" -exec chmod 644 {} \;

# 5. Make this script executable.
# This assumes it is located inside the ~/.ssh directory.
if [ -f "$SSH_DIR/$(basename "$0")" ]; then
    echo "Making this script executable"
    chmod 700 "$SSH_DIR/$(basename "$0")"
fi

echo -e "\nPermissions have been set."