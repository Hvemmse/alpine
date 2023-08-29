#!/bin/sh

# Opret brugeren "live"
adduser live <<EOF
live
live
Live User
""
""
""
EOF

# Giv brugeren sudo-adgang
echo "live ALL=(ALL) ALL" >> /etc/sudoers

# Vis oprettelsesbekræftelse
echo "Brugeren 'live' er oprettet med adgangskoden 'live' og har sudo-adgang."

apk add sudo 
