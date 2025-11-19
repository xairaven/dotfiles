#!/bin/bash

# Installing zsh
chsh -s $(which zsh)

# Changing timezone to Europe/Kyiv
timedatectl set-timezone Europe/Kyiv

# Changing hostname
hostnamectl set-hostname desktop

# DNF Install Only limit
# Check if the setting exists; if yes, replace it. If no, append it.
if grep -q "^installonly_limit=" /etc/dnf/dnf.conf; then
    sudo sed -i 's/^installonly_limit=.*/installonly_limit=2/' /etc/dnf/dnf.conf
else
    echo "installonly_limit=2" | sudo tee -a /etc/dnf/dnf.conf > /dev/null
fi
