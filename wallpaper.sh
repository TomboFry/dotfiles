#!/bin/bash

time=$(date "+%H")

if [[ $time -gt 7 && $time -lt 18 ]]; then
	feh --bg-fill ~/.dotfiles/wallpapers/wallpaper_moon.png
else
	feh --bg-fill ~/.dotfiles/wallpapers/wallpaper_moon_dark.png
fi
