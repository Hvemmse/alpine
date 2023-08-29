#!/bin/bash

echo "Laver en upgradering"
apk update && apk upgrade || exit


# Vis en besked og vent på et tastetryk
read -n 1 -s -r -p "Tryk på en tast for at fortsætte..."

# Din kode fortsætter her efter tastetrykket
echo "Fortsætter nu..."

echo "Installerer xfce4 xorg xrdp openssh samba"
apk add xfce4 xorg xrdp openssh samba || exit
