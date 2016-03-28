#!/bin/bash

i3-nagbar -t warning -m 'Shutdown?' -b 'Yes' 'urxvt -geometry 30x3 -e "bash" -c "sudo shutdown now" & killall i3-nagbar'