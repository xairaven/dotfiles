#!/bin/bash

# Installing zsh
chsh -s $(which zsh)

# Changing timezone to Europe/Kyiv
timedatectl set-timezone Europe/Kyiv

# Changing hostname
hostnamectl set-hostname desktop