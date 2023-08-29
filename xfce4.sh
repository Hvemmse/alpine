#!/bin/bash

# Opdater pakkeindeks
apk update

# Installer Xorg
apk add xorg-server xf86-video-vesa || exit

# Konfigurer Xorg til at starte automatisk under opstart
rc-update add xdm default || exit

# Installer Xfce4 og tilknyttede pakker
apk add xfce4 xfce4-terminal xfce4-session thunar-volman ttf-dejavu || exit

# Genstart maskinen
# reboot
