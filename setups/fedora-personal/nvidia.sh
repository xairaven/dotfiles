#!/bin/bash

# Request administrator privileges upfront
sudo -v

# Enable Dynamic Power Management AND Video Memory Preservation for Wayland
echo "options nvidia NVreg_DynamicPowerManagement=0x02 NVreg_PreserveVideoMemoryAllocations=1" | sudo tee /etc/modprobe.d/nvidia-power-management.conf

# Enable systemd services for proper sleep and wake cycles
sudo systemctl enable nvidia-suspend.service nvidia-resume.service nvidia-hibernate.service

# Bind KWin to integrated video (Wayland specific)
echo 'KWIN_DRM_DEVICES=/dev/dri/card1:/dev/dri/card0' > ~/.config/environment.d/10-kwin-drm.conf

# Inform the user
echo "Setup complete. Please reboot your system."