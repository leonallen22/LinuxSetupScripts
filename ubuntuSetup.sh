#!/bin/bash
#
# My typical setup steps for a fresh Ubuntu install
#
# TODO:
#   - Add dropbox install

# Add Repos

# Update & upgrade
apt update
apt upgrade -y

# Install my packages
apt install git keepassx vim wireshark htop icdiff pandoc imagemagick conky-all

# Install flash
sudo apt install flashplugin-installer

# Install KVM
apt install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-viewer virt-manager

# Install Docker
apt install docker.io

# Configuration
git config --global credential.helper 'cache --timeout=600'
adduser `id -un` libvirt
