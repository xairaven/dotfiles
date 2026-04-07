#!/bin/bash

# Repositories
flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/

# Applications to install
apps=(
    # Voice, video, and text chat app tailored for communities
    com.discordapp.Discord

    # Sandbox block-building adventure game
    com.mojang.Minecraft

    # Open-source software for video recording and live streaming
    com.obsproject.Studio

    # Secure and private VPN service
    com.protonvpn.www

    # Digital music, podcast, and video service
    com.spotify.Client

    # Cross-platform voice over IP and instant messaging software
    com.viber.Viber

    # Tool to manage AppImages on the Linux desktop
    it.mijorus.gearlever

    # Note-taking app based on local Markdown files
    md.obsidian.Obsidian

    # Open-source web browser project
    org.chromium.Chromium

    # GNU Image Manipulation Program for raster graphics editing
    org.gimp.GIMP

    # Cross-platform community-driven password manager
    org.keepassxc.KeePassXC

    # Cloud-based instant messaging and voice over IP service
    org.telegram.desktop

    # Integrated writing environment for creating LaTeX documents
    org.texstudio.TeXstudio

    # Open-source cross-platform multimedia player
    org.videolan.VLC

    # Network protocol analyzer
    org.wireshark.Wireshark

    # Open-source Shazam client for Linux
    re.fossplant.songrec

    # Video conferencing and communications platform
    us.zoom.Zoom
)

# Install all listed applications in a single transaction
# The -y flag automatically confirms the installation prompts
flatpak install --user -y flathub "${apps[@]}"