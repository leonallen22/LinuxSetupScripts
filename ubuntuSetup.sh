#!/bin/bash
#
# My typical setup steps for a fresh Ubuntu install
#
# TODO:
#   - Add pCloud install
# 
# Set & configure default editor
cp -r .vim ~/

# Install fzf (CLI fuzzy finder, CTRL-R)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# Install flash
sudo apt install flashplugin-installer
# Configuration
git config --global credential.helper 'cache --timeout=600'
