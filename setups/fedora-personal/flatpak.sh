# Repositories
flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/

# Apps
flatpak install --user flathub \
    com.discordapp.Discord \
    com.mojang.Minecraft \
    com.obsproject.Studio \
    com.protonvpn.www \
    com.spotify.Client \
    com.viber.Viber \
    md.obsidian.Obsidian \
    org.chromium.Chromium \
    org.gimp.GIMP \
    org.keepassxc.KeePassXC \
    org.telegram.desktop \
    org.texstudio.TeXstudio \
    org.videolan.VLC \
    org.wireshark.Wireshark \
    us.zoom.Zoom 