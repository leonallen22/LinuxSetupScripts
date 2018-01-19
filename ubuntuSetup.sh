#!/bin/bash
#
# My typical setup steps for a fresh Ubuntu install (run with sudo)
#
# TODO:
#   - Add dropbox install
#   - Add flash install :(

# Add Repos
add-repository ppa:numix/ppa
add-apt-repository ppa:webupd8team/atom

# Update & upgrade
apt update
apt upgrade -y

# Install my packages
apt install git keepassx atom numix-gtk-theme numix-icon-theme numix-icon-theme-circle

# Install KVM
apt install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-viewer virt-manager

# Configuration
git config --global credential.helper 'cache --timeout=600'
adduser `id -un` libvirt
