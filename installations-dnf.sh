#!/bin/bash

dnf install -y epel-release;
dnf install -y vim ufw screen \
	xclip xorg-x11-xauth xorg-x11-utils \
	xorg-x11-fonts-* xorg-x11-server-Xorg;