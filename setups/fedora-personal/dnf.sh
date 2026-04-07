#!/bin/bash

# RPM Fusion repository for additional free software packages
dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# User Applications and Developer Tools
user_apps=(
    # Resource monitor that shows usage and stats for processor, memory, disks, network, and processes
    btop
    # Visual Studio Code editor
    code
    # Command-line system information tool written in C
    fastfetch
    # Distributed version control system
    git
    # Graphical user interface for smartmontools to monitor hard drive health
    gsmartcontrol
    # GNU data compression program
    gzip
    # Interactive process viewer
    htop
    # Easy-to-use paint program
    kolourpaint
    # KDE terminal emulator
    konsole
    # Visual diff and merge tool
    meld
    # Network exploration tool and security scanner
    nmap
    # Concatenate and redirect sockets, modern netcat replacement
    nmap-ncat
    # Universal document viewer
    okular
    # Daemonless container engine
    podman
    # Run docker-compose.yml files using Podman
    podman-compose
    # Python 3 programming language
    python3
    # Package installer for Python 3
    python3-pip
    # Terminal multiplexer and window manager
    screen
    # Tools for monitoring SMART capable hard disks
    smartmontools
    # Command-line interface for SQLite 3 databases
    sqlite
    # Digital software delivery system and game launcher
    steam
    # GNU file archiving program
    tar
    # Command-line network traffic analyzer
    tcpdump
    # Complete TeX Live environment for LaTeX document preparation
    texlive-scheme-full
    # Integrated writing environment for creating LaTeX documents
    texstudio
    # Terminal multiplexer for managing multiple terminal sessions
    tmux
    # Tool to track the route packets take to a network host
    traceroute
    # Command to display directories as hierarchical trees
    tree
    # Utility for extracting zip archives
    unzip
    # Highly configurable text editor built to enable efficient text editing
    vim
    # Command-line copy and paste utilities for Wayland
    wl-clipboard
    # Command-line interface to the X11 clipboard
    xclip
    # Command-line audio and video downloader
    yt-dlp
    # File packaging utility
    zip
    # The Z shell, an extended Bourne shell with many improvements
    zsh
    # Fish-like autosuggestions for Zsh
    zsh-autosuggestions
    # Fish-shell like syntax highlighting for Zsh
    zsh-syntax-highlighting
)

# Core System Dependencies, Libraries, and Firmware
system_apps=(
    # ASCII art library
    aalib-libs
    # Kernel module tracker that automatically builds the NVIDIA driver for new kernels
    akmod-nvidia
    # Automatic kmods build and install tool
    akmods
    # Sound Open Firmware for ALSA
    alsa-sof-firmware
    # Advanced tools for ALSA sound drivers
    alsa-tools
    # ALSA Use Case Manager configuration
    alsa-ucm
    # Advanced Linux Sound Architecture utilities
    alsa-utils
    # Firmware for AMD graphics cards
    amd-gpu-firmware
    # Microcode updates for AMD processors
    amd-ucode-firmware
    # Firmware for Atheros wireless network adapters
    atheros-firmware
    # Colored bash prompt configuration
    bash-color-prompt
    # Programmable completion functionality for Bash
    bash-completion
    # Utilities for querying DNS name servers
    bind-utils
    # A GNU collection of binary utilities like linker and assembler
    binutils
    # Official Linux Bluetooth protocol stack
    bluez
    # CUPS printer backend for Bluetooth printers
    bluez-cups
    # Firmware for Broadcom and Cypress wireless cards
    brcmfmac-firmware
    # Utility for extracting Microsoft Cabinet files
    cabextract
    # Development header files for the Clang compiler
    clang-devel
    # Cross-platform build system generator
    cmake
    # Tool for transferring data from or to a server
    curl
    # Dynamic Kernel Module Support framework
    dkms
    # Font configuration and customization library
    fontconfig
    # Development files for fontconfig
    fontconfig-devel
    # Development files for the FreeType font engine
    freetype-devel
    # The GNU C++ compiler
    g++
    # The GNU C compiler
    gcc
    # C++ support for the GCC compiler
    gcc-c++
    # The GNU C Library
    glibc
    # Object files for development using standard C libraries
    glibc-devel
    # Header files for development using standard C libraries
    glibc-headers
    # Utilities for querying the GLX extension and 3D capabilities
    glx-utils
    # Framework for managing passwords and secrets
    gnome-keyring
    # GStreamer plugin for openh264 video decoding
    gstreamer1-plugin-openh264
    # Tools for testing the Direct Rendering Manager drivers
    igt-gpu-tools
    # Audio firmware for Intel SoCs
    intel-audio-firmware
    # Firmware for Intel graphics cards
    intel-gpu-firmware
    # Intel Media Driver for Video Acceleration API
    intel-media-driver
    # Firmware for the Intel Visual Sensing Controller
    intel-vsc-firmware
    # Firmware for older Intel wireless network cards
    iwlegacy-firmware
    # Firmware for Intel wireless cards using the DVM firmware
    iwlwifi-dvm-firmware
    # Firmware for Intel wireless cards using the MVM firmware
    iwlwifi-mvm-firmware
    # Development package for building kernel modules to match the core kernel
    kernel-devel
    # Header files for the Linux kernel needed to compile C programs
    kernel-headers
    # Pre-built NVIDIA kernel modules
    kmod-nvidia
    # Kernel module to create V4L2 loopback devices
    kmod-v4l2loopback
    # Tool for building kernel module packages
    kmodtool
    # FFmpeg codec library with extended format support
    libavcodec-freeworld
    # GCC OpenMP shared support library
    libgomp
    # Development files for the X C Binding library
    libxcb-devel
    # Development files for handling keyboard descriptions
    libxkbcommon-devel
    # Collection of firmware files used by the Linux kernel
    linux-firmware
    # Utility to list open files and the processes that opened them
    lsof
    # GNU make utility to maintain groups of programs
    make
    # Demonstrations and test programs for Mesa 3D graphics library
    mesa-demos
    # Mesa-based Direct Rendering Infrastructure drivers
    mesa-dri-drivers
    # Mesa Vulkan drivers for AMD and Intel hardware
    mesa-vulkan-drivers
    # Tool to update x86 and x86_64 CPU microcode
    microcode_ctl
    # Tool to manage Machine Owner Keys for Secure Boot
    mokutil
    # Microsoft Core Fonts collection
    mscore-fonts-all
    # Firmware for MediaTek wireless cards
    mt7xxx-firmware
    # Firmware required for NVIDIA GPUs
    nvidia-gpu-firmware
    # Utility for configuring the NVIDIA graphics driver
    nvidia-settings
    # Interactive task monitor for NVIDIA, AMD, and Intel GPUs
    nvtop
    # Open source H.264 codec implementation
    openh264
    # Toolkit for cryptography and secure communication
    openssl
    # Utility for modifying or upgrading files using patch files
    patch
    # Volume control tool for the PulseAudio sound server
    pavucontrol
    # ALSA compatibility layer for PipeWire
    pipewire-alsa
    # AptX Bluetooth codec support for PipeWire
    pipewire-codec-aptx
    # RAOP configuration for PipeWire
    pipewire-config-raop
    # GStreamer integration for PipeWire
    pipewire-gstreamer
    # PulseAudio drop-in replacement for PipeWire
    pipewire-pulseaudio
    # Command-line utilities for interacting with PipeWire
    pipewire-utils
    # QEMU guest agent for better virtual machine integration
    qemu-guest-agent
    # QEMU emulator for KVM virtual machines
    qemu-kvm
    # Firmware for Realtek network and audio devices
    realtek-firmware
    # Firmware for Texas Instruments wireless devices
    tiwilink-firmware
    # Utilities and tools for the Vulkan graphics API
    vulkan-tools
    # CUDA driver component for NVIDIA
    xorg-x11-drv-nvidia-cuda
    # Font utilities for the X.Org display server
    xorg-x11-font-utils
)

# Execute the installation
dnf install -y "${user_apps[@]}"
dnf install -y "${system_apps[@]}"