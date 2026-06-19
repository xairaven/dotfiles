#!/bin/bash

# This script configures akmods for automatic kernel module signing on Fedora.
# You only need to run this ONCE. akmods handles future kernel updates automatically.

# Request sudo privileges
sudo -v

# Install necessary tools
sudo dnf install -y kmodtool akmods mokutil

# Generate the akmods key if it does not exist
if [ ! -f /etc/pki/akmods/certs/public_key.der ]; then
    echo "Generating akmods key..."
    sudo kmodgenca -a
else
    echo "akmods key already exists."
fi

# Enroll the key to Secure Boot trusted keys
echo "Enrolling the key. You will be prompted to create a password."
echo "Remember this password! You will need it on the blue MOKManager screen after reboot."
sudo mokutil --import /etc/pki/akmods/certs/public_key.der

# Clean cache and force rebuild to ensure all modules are signed with the correct key
echo "Rebuilding modules. This might take a few minutes..."
sudo rm -rf /var/cache/akmods/*
sudo akmods --force

echo "Setup complete. Please REBOOT your system now."
echo "During boot, a blue screen will appear. Select 'Enroll MOK', 'Continue', 'Yes'."
echo "Then enter the password you just created and reboot."