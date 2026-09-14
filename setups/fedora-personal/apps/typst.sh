#!/bin/bash

# Create the local bin directory
mkdir -p ~/.local/bin

# Navigate to a temporary folder
cd /tmp

# Download the absolute LATEST release directly
wget -q --show-progress https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz

# Extract the archive
tar -xf typst-x86_64-unknown-linux-musl.tar.xz

# Move the binary into local path, overwriting the old one if it exists
mv -f typst-x86_64-unknown-linux-musl/typst ~/.local/bin/

# Clean up
rm -rf typst-x86_64-unknown-linux-musl*

# Verify the new version
typst --version