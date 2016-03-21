#!/bin/bash

# Location is stored in a file ignored by GitHub, line 1 being the latitude and line 2 being the longitude
lat=$(sed '1q;d' ~/.dotfiles/location)
long=$(sed '2q;d' ~/.dotfiles/location)

# Actually start xflux using these variables and a temperature of 3000 K
~/.dotfiles/xflux -l $lat -g $long -k 3000
