#!/bin/bash
#
# TODO:
#   - Add dropbox install
#   - Add flash install :(

# Add Repos
sudo su
add-repository ppa:numix/ppa
add-apt-repository ppa:webupd8team/atom
apt update

# Upgrade & install packages
apt upgrade -y
apt install git
apt install keepassx
apt install atom
apt install numix-gtk-theme
apt install numix-icon-theme
apt install numix-icon-theme-circle

# Install KVM
apt install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-viewer

# Configuration
git config --global credential.helper 'cache --timeout=600'
adduser `id -un` libvirtd
