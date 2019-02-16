#!/bin/bash

# Install git, just in case
sudo pacman -Syyu
sudo pacman -S git

mkdir -p /tmp/dotfiles
cd /tmp/dotfiles

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install packages
yay -S exa htop zsh zsh-syntax-highlighting oh-my-zsh-git vim neofetch ranger rustup firefox bat code keepassx2 nextcloud-client
