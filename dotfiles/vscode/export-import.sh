# Export extensions:
code --list-extensions > extensions.txt
# Install extensions from the list:
xargs -L 1 code --install-extension < extensions.txt