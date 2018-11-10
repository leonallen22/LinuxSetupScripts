#!/bin/bash
#
# My typical setup steps for a fresh Ubuntu install
#
# TODO:
#   - Add pCloud install
# 
# vim theme: https://github.com/ErichDonGubler/vim-sublime-monokai

# Update & upgrade
sudo apt update
sudo apt upgrade -y

# Install misc packages
sudo apt install yes git ddd keepassx vim tmux xfce4-terminal wireshark htop icdiff pandoc imagemagick conky-all openconnect

# Set aliases for those, if needed
touch ~/.bash_aliases

if [ $(grep -ic "alias diff='icdiff'" ~/.bash_aliases) -eq 0 ]; then
  echo "alias diff='icdiff'" >> ~/.bash_aliases
fi

if [ $(grep -ic "alias top='htop'" ~/.bash_aliases) -eq 0 ]; then
  echo "alias top='htop'" >> ~/.bash_aliases
fi


# Set & configure default editor
echo "export EDITOR=vim" >> ~/.bashrc
echo "export VISUAL=vim" >> ~/.bashrc
cp -r .vim ~/
ln -s ~/.vim/.vimrc ~/.vimrc

# Install bat (cat replacement) if not installed
dpkg -s "bat" &> /dev/null
if [ $? -gt 0 ]; then
  wget https://github.com/sharkdp/bat/releases/download/v0.6.0/bat_0.6.0_amd64.deb
  sudo dpkg -i bat_0.6.0_amd64.deb
  if [ $(grep -ic "alias cat='bat'" ~/.bash_aliases) -eq 0 ]; then
    echo "alias cat='bat'" >> ~/.bash_aliases
  fi
fi

# Install fzf (CLI fuzzy finder, CTRL-R)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# Install fd (find replacement)
sudo apt install fd
if [ $(grep -ic "alias find='echo you should use fd instead'" ~/.bash_aliases) -eq 0 ]; then
  echo "alias find='echo you should use fd instead'" >> ~/.bash_aliases
fi

# Install ncdu (du replacement)
sudo apt install ncdu
if [ $(grep -ic "alias du='ncdu'" ~/.bash_aliases) -eq 0 ]; then
  echo "alias du='ncdu'" >> ~/.bash_aliases
fi

# Install ack & ag (grep replacement)
sudo apt install ack silversearcher-ag
if [ $(grep -ic "alias grep='echo you should use ack or ag instead'" ~/.bash_aliases) -eq 0 ]; then
  echo "alias grep='echo you should use ack or ag instead'" >> ~/.bash_aliases
fi

# Install entr (watch replacement)
sudo apt install entr
if [ $(grep -ic "alias watch='echo you should use entr instead'" ~/.bash_aliases) -eq 0 ]; then
  echo "alias watch='echo you should use entr instead'" >> ~/.bash_aliases
fi

# Install flash
sudo apt install flashplugin-installer

# Install KVM
sudo apt install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-viewer virt-manager

# Install Docker
sudo apt install docker.io

# Configuration
git config --global credential.helper 'cache --timeout=600'
sudo adduser `id -un` libvirt
