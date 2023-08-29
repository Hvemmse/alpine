  GNU nano 6.3                                xfce4.sh                                           
#!/bin/bash

# Opdater pakkeindeks
apk update

# Installer Xorg
apk add xorg-server xf86-video-vesa || exit


# Installer Xfce4 og tilknyttede pakker
apk add xrdp xfce4 xfce4-terminal xfce4-session thunar-volman ttf-dejavu lightdm || exit

# Konfigurer Xorg til at starte automatisk under opstart
rc-update add lightdm default || exit


# Konfigurer xRdp til at starte automatisk under opstart
rc-update add xrdp default || exit


# Genstart maskinen
# reboot
