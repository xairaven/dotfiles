# Protect private keys
sudo chmod -R 600 /home/xairaven/.ssh

# Public keys can be more permissive
sudo chmod 644 /home/xairaven/.ssh/github/key.pub

# Ensure directories have the correct permissions
sudo chmod 700 /home/xairaven/.ssh/
sudo chmod 700 /home/xairaven/.ssh/github