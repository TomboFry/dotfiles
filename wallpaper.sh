#!/bin/bash

#time=$(date "+%H")

#if [[ $time -gt 8 && $time -lt 18 ]]; then
#	feh --bg-fill ~/.dotfiles/wallpapers/wallpaper_moon.png
#else
#	feh --bg-fill ~/.dotfiles/wallpapers/wallpaper_moon_dark.png
#fi

wallpaper=$1

if [ -z "$wallpaper" ]; then
	wallpaper="/home/tom/Pictures/wallpaper3.jpg"
fi

feh --bg-fill $wallpaper
