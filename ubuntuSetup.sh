#!/bin/bash
#
# TODO:
#   - Add dropbox install
#   - Add flash install :(

sudo su
add-repository ppa:numix/ppa
add-apt-repository ppa:webupd8team/atom
apt update
apt upgrade -y
apt install git
apt install keepassx
apt install atom
apt install numix-gtk-theme
apt install numix-icon-theme
apt install numix-icon-theme-circle
