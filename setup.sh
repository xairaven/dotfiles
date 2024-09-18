#!/bin/bash

# Installing zsh
chsh -s $(which zsh)

# Changing timezone to Europe/Kyiv
timedatectl set-timezone Europe/Kyiv

# Changing hostname
hostnamectl set-hostname desktop

# Git initial setup
git config --global user.name "xairaven"
git config --global user.email mail@gmail.com
git config --global core.editor vim
git config --global init.defaultBranch main
git config --list --show-origin