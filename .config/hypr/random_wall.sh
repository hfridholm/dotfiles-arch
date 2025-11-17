#!/bin/bash

directory=~/.config/hypr/wallpapers
monitor=`hyprctl monitors | grep Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then
  background=$(ls $directory/*.jpg | shuf -n 1)

  hyprctl hyprpaper unload unused
  hyprctl hyprpaper preload $background
  hyprctl hyprpaper wallpaper "$monitor, $background"
fi
