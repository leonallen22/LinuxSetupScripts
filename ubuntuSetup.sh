#!/bin/bash
#
# My typical setup steps for a fresh Ubuntu install
#
# TODO:
#   - Add pCloud install

# Add Repos

# Update & upgrade
apt update
apt upgrade -y

# Install misc packages
apt install yes git ddd keepassx vim wireshark htop icdiff pandoc imagemagick conky-all openconnect
echo "alias top='htop' diff='icdiff'" >> ~/.bash_aliases

# Set & configure default editor
echo "export EDITOR=vim" >> ~/.bashrc
echo "export VISUAL=vim" >> ~/.bashrc
cp -r .vim ~/
ln -s ~/.vim/.vimrc ~/.vimrc

# Install bat (cat replacement)
wget https://github.com/sharkdp/bat/releases/download/v0.6.0/bat_0.6.0_amd64.deb
dpkg -i bat_0.6.0_amd64.deb
echo "alias cat='bat'" >> ~/.bash_aliases

# Install fzf (CLI fuzzy finder, CTRL-R)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# Install fd (find replacement)
apt install fd
echo "alias find='echo you should use fd instead'" >> ~/.bash_aliases

# Install ncdu (du replacement)
apt install ncdu
alias du='ncdu'

# Install ack & ag (grep replacement)
apt install ack silversearcher-ag
echo "alias grep='echo you should use ack or ag instead'" >> ~/.bash_aliases

# Install entr (watch replacement)
apt install entr
echo "alias watch='echo you should use entr instead'" >> ~/.bash_aliases

# Install flash
sudo apt install flashplugin-installer

# Install KVM
apt install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-viewer virt-manager

# Install Docker
apt install docker.io

# Configuration
git config --global credential.helper 'cache --timeout=600'
adduser `id -un` libvirt
