# My Configuration Files / Setup Scripts

**Author**: [*xairaven*](https://github.com/xairaven)

## Dotfiles

### General
- [**.gitconfig**](./dotfiles/.gitconfig) - *Git configuration*

### Linux
- [*GPG Agent Config*](./dotfiles/linux/gpg-agent.conf) - *Configuration of GPG Agent (Cache, etc.)*
- [**.ssh**](./dotfiles/linux/.ssh) - *Distributed SSH configs*
- [**Screen**](./dotfiles/linux/screen) - *Screen utility configuration files*
- [**Shell**](./dotfiles/linux/shell/) - *Shell configuration (Bash, Zsh, needed aliases)*

### OpenWRT
- [**Profile**](./dotfiles/openwrt/profile) - *Aliases*

### Windows
- [**Cargo**](./dotfiles/windows/.cargo) - *Configuration file for Cargo*


## Settings

### Jetbrains
- [**Plugins**](./settings/jetbrains/plugins.md) - *Needed plugins list*
- [**Themes**](./settings/jetbrains/themes/) - *My themes for IDEs*

### LaTeX
- [**TeXStudio Settings**](./settings/latex/texstudio.md) - *Howto setup TeXStudio for comfortable work*
- [**University Template**](./settings/latex/KPI-Template/) - *Document template for university labs*

### Rust
- [**Formatter**](./settings/rust/rustfmt.toml) - *Formatter settings*
- [**Toolchain**](./settings/rust/rust-toolchain.toml) - *Toolchain settings for some project*

## Setups

### Linux Fedora (Personal)
- [**Essentials**](./setups/fedora-personal/shell-time.sh) - *Setup needed shell, timezone, hostname etc.*
- [**KDE Plasma Remove Italics**](./setups/fedora-personal/remove-italics.sh) - *Disable italics on KDE Plasma desktop shortcuts*
- [**Kernel Sign Script**](./setups/fedora-personal/auto-kernel-sign.sh) - *Automatic kernel module signing*
- [**Nvidia Script**](./setups/fedora-personal/nvidia.sh) - *Some settings for better work with Nvidia card*
- [**SSH Permissions**](./setups/fedora-personal/ssh-chmod.sh) - *Securely sets permissions for my ssh configs-keys setup*

#### Apps
- [**DNF Packets**](./setups/fedora-personal/apps/main-dnf.sh) - *All needed dnf packets*
- [**Flatpak Packages**](./setups/fedora-personal/apps/main-flatpak.sh) - *All needed flatpak packages*

**Other apps (verify script before use)**

- [**Cargo**](./setups/fedora-personal/apps/cargo.sh)
- [**Claude Code**](./setups/fedora-personal/apps/claude.sh)
- [**Docker**](./setups/fedora-personal/apps/docker.sh)
- [**Nvidia Drivers**](./setups/fedora-personal/apps/nvidia.sh)
- [**OhMyZsh**](./setups/fedora-personal/apps/ohmyzsh.sh)
- [**Proton-GE**](./setups/fedora-personal/apps/proton-ge.sh)
- [**Rust Compiler / Rustup / Cargo**](./setups/fedora-personal/apps/rust.sh)
- [**VirtualBox**](./setups/fedora-personal/apps/virtualbox.sh)
- [**VS Code**](./setups/fedora-personal/apps/vs-code.sh)

### Minecraft (Linux Server, CentOS)
- [**Setup script**](./setups/minecraft/setup.sh) - *Needed packages*

### Windows (Personal)
- [**Rust, Mingw**](./setups/windows/rust-mingw.md) - *Clean installation of Rust compiler*