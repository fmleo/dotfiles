#!/usr/bin/fish
set monitor (swaymsg -t get_outputs | jq '[.[].focused] | index(false)')
rofi -modi drun -show drun -config ~/.config/rofi/config.rasi -m $monitor

