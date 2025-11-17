#!/bin/bash

pkill waybar
hyprctl dispatch exec waybar

pkill hyprpaper
hyprctl dispatch exec hyprpaper
