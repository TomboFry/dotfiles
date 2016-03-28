#!/bin/bash

tmpbg=/tmp/ss.png

scrot $tmpbg

# Scales to 32x32 blocks
convert $tmpbg -scale 3.125% -scale 3200% $tmpbg

i3lock -u -i $tmpbg
