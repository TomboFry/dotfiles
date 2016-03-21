#!/bin/bash
tmpbg=/tmp/ss.png
#icon=~/.dotfiles/lock.png
scrot $tmpbg
convert $tmpbg -scale 5% -scale 2000% $tmpbg
#convert $tmpbg -blur 0x8 $tmpbg
#convert $tmpbg $icon -gravity center -composite -matte $tmpbg
i3lock -u -i $tmpbg
