#!/bin/bash

apps=(
    # Cargo subcommand that displays when Rust project dependencies have newer versions available
    cargo-outdated
    # Command-line utility for SQLx - SQL toolkit for Rust
    sqlx-cli
)

# Execute the installation
cargo install "${apps[@]}"