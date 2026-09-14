#!/bin/bash

# Here you'll find rpms to install Microsoft's Core fonts for the Web, 
# the EU update and the ClearType fonts. The fonts are Andale, Arial, Calabri, 
# CAmbria, Candara, Consolas, Constantia, Corbel, Comic, Courier, Georgia, Impact, Times Trebuchet, 
# Verdana and Webdings.

# The original cab files circa 2000 are on the sourceforge corefonts probject, while this project 
# holds updates circa 2006, and the Cleartype fonts circa 2007. See

# https://sourceforge.net/projects/corefonts/
# and
# https://sourceforge.net/projects/mscorefonts/

# The rpms here do not contain the truetype fonts, instead the cabfiles are downloaded and 
# unpacked at install time.

# The fonts are then added or made known to the X core fonts and Xft systems.

# Credit goes to the original author of corefonts, Noa Resare, and the numerous netizens 
# who updated the spec file over the years.

# See the specs and changelog for more history. 

sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

# SECOND WAY, more usable
# The reason this convoluted process exists comes down to licensing.
# Firstly, redistribution restrictions: Microsoft released these core fonts freely for 
# personal use, but their EULA strictly forbids third-party Linux distributions (like Fedora, 
# Debian, or Ubuntu) from packaging the .ttf files directly inside system repositories.
# The original packages: Microsoft permitted distribution as long as the original, unmodified 
# self-extracting .exe packages were used without altering the files inside.
# The Linux convention: To remain fully legally compliant, Linux systems handle Microsoft 
# fonts by downloading those exact legacy archives directly from mirrors and unpacking 
# the raw .ttf payloads via cabextract.The RPM installer failed because it was packaged decades 
# ago and relied on outdated SourceForge redirect URLs that its internal download script could 
# no longer parse. Pulling the archives directly via wget and extracting them 
# into ~/.local/share/fonts/ bypassed the broken wrapper script and avoided needing root 
# privileges or package manager overrides.
mkdir -p ~/.local/share/fonts/mscorefonts
cd ~/.local/share/fonts/mscorefonts

wget -q --show-progress https://downloads.sourceforge.net/corefonts/arial32.exe
wget -q --show-progress https://downloads.sourceforge.net/corefonts/times32.exe

cabextract -L arial32.exe times32.exe
rm -f *.exe
fc-cache -fv ~/.local/share/fonts
# That command must give something. Just validation
fc-list | grep -i "Times New Roman"