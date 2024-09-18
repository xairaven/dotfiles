# Git initial setup
git config --global user.name "xairaven"
git config --global user.email mail@gmail.com
git config --global core.editor vim
git config --global init.defaultBranch main
git config --list --show-origin

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
dnf install gcc -y