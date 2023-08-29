#!/bin/bash

echo "Laver en upgradering"
apk update && apk upgrade || exit


# Vis en besked og vent på et tastetryk
read -n 1 -s -r -p "Tryk på en tast for at fortsætte..."

# Din kode fortsætter her efter tastetrykket
echo "Fortsætter nu..."

echo "Installerer micro tmux ranger openssh samba"
apk add micro tmux ranger openssh samba || exit
