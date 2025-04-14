Opcyclet Ovenlys med Alpine Linux og Raspberry Pi

Et projekt der genbruger en gammel skærm og Raspberry Pi som ovenlys med solid hvid baggrund, styret automatisk via Home Assistant.


---

Indhold

Hardware

Software

Installation

Strømforbrug

Home Assistant Automation

Fordele

Ekstra



---

Hardware

Raspberry Pi Zero 2 W / 3 / 4

Gammel 19" skærm (DVI/HDMI)

DVI til HDMI adapter (hvis nødvendigt)

USB-drev (min. 4 GB)

Smart plug (Tuya, Zigbee etc.)



---

Software

Alpine Linux i diskless mode

Openbox som window manager

X11 til at tegne skærmen

xsetroot til at vise solid hvid baggrund

Home Assistant til automatiseret styring



---

Installation

1. Flash Alpine til USB-drev eller SD-kort


2. Boot op og kør:



setup-alpine

3. Vælg "diskless" mode under diskinstallation


4. Installer pakker:



apk add openbox xinit xset xorg-server xf86-video-fbdev

5. Redigér ~/.xinitrc:



xsetroot -solid white
exec openbox-session

6. Autologin og autostart:



Redigér /etc/inittab for autologin

Tilføj startx i /root/.profile


7. Gem dine ændringer:



lbu add /etc /root
lbu commit


---

Strømforbrug

> Lavere end LED-ovenlys i mange tilfælde




---

Home Assistant Automation

alias: Tænd ovenlys hvis overskyet
trigger:
  - platform: sun
    event: sunrise
  - platform: time_pattern
    minutes: "/10"
condition:
  - condition: sun
    after: sunrise
    before: sunset
  - condition: numeric_state
    entity_id: weather.open_meteo
    attribute: cloud_coverage
    above: 60
action:
  - service: switch.turn_on
    target:
      entity_id: switch.ovenlys
mode: single


---

Fordele

Kører fuldt i RAM (hurtig og slidfri)

Kan slukkes hårdt uden risiko for korruption

Billig og genbrugelig løsning

Ingen ventilator eller støj



---

Ekstra

Skærmen kan vægmonteres på loft med beslag

Projektet kan udvides med billedvisning, statusinfo, m.m.

Brug feh hvis du vil have billede frem for solid farve



---

> Lavet som nørdeprojekt til genbrug og funktionel lysoptimering



