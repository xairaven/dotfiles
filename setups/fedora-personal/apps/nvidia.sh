#!/bin/bash

# You will need sudo for this script
# Tutorial: https://youtu.be/k5uxX2U3tYE?si=h-Tc5S8sNyN1hJR_
# Another tutorial: https://www.if-not-true-then-false.com/2015/fedora-nvidia-guide/

# Updating all packages
dnf upgrade

# Videocard check:
# > /sbin/lspci | grep -e VGA
# 0000:00:02.0 VGA compatible controller: Intel Corporation Alder Lake-UP3 GT2 [Iris Xe Graphics] (rev 0c)
# > /sbin/lspci | grep -e 3D 
# 0000:01:00.0 3D controller: NVIDIA Corporation GA107M [GeForce RTX 2050] (rev a1)

# Installing necessary packages
dnf install kmodtool akmods mokutil openssl

# Generating key
kmodgenca -a
# Enrolling key
mokutil --import /etc/pki/akmods/certs/public_key.der

# Reboot!

dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda

# Options
echo -e "options nvidia NVreg_PreserveVideoMemoryAllocations=1\noptions nvidia-drm modeset=1 fbdev=1" >> /etc/modprobe.d/nvidia.conf

# Blacklist for noveau
echo -e "blacklist nouveau\nblacklist nova_core" >> /etc/modprobe.d/blacklist.conf

# Reboot again

# Check settings
modinfo -F version nvidia