#!/bin/bash

# Linux Mint post installation script

# System update

sudo apt update
sudo apt upgrade -y

# Enabling Snaps

sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd -y

# Installing Snap packages

sudo snap install authy multipass

# Installing flatpak packages

flatpak install flathub com.spotify.Client -y
flatpak install flathub net.cozic.joplin_desktop -y
flatpak install flathub com.elsevier.MendeleyDesktop -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.kde.tellico -y
flatpak install flathub org.kde.akregator -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub com.gitlab.davem.ClamTk -y
sudo freshclam

# Downloading PhotoGIMP

wget https://github.com/Diolinux/PhotoGIMP/releases/download/1.1/PhotoGIMP.by.Diolinux.v2020.1.for.Flatpak.zip

# Installing PPAs

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris -y

# System update

sudo apt update
sudo apt upgrade -y

# System clean-up

sudo apt autoclean -y
sudo apt clean -y
sudo apt autoremove -y

echo Post-installation succesfull!
