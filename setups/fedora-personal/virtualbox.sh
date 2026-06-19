# RPM Fusion
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# Packages
sudo dnf install VirtualBox akmod-VirtualBox kernel-devel-$(uname -r)

# Build the kernel modules and restart the VirtualBox driver service
sudo akmods
sudo systemctl restart vboxdrv.service

# Check your installed VirtualBox version
VBOX_VERSION=$(VBoxManage -v)
SEPARATOR="_"
VERSION="${VBOX_VERSION%%"$SEPARATOR"*}"
echo $VERSION
# Download the matching Extension Pack
wget https://download.virtualbox.org/virtualbox/$VERSION/Oracle_VirtualBox_Extension_Pack-$VERSION.vbox-extpack
# Install the extension pack directly into VirtualBox
sudo VBoxManage extpack install --replace Oracle_VirtualBox_Extension_Pack-$VERSION.vbox-extpack
# Clean up the downloaded extension pack file
rm -y Oracle_VirtualBox_Extension_Pack-$VERSION.vbox-extpack

# Add your current user account to the VirtualBox user group
sudo usermod -aG vboxusers $USER

# Install the VirtualBox Guest Additions ISO (ONLY ON GUESTS)
sudo dnf install virtualbox-guest-additions
# ON DEBIAN: https://superuser.com/questions/950431/how-to-install-virtual-box-guest-additions-on-debian