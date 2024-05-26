#!/bin/bash

# Set wallpaper
feh --bg-scale ~/Pictures/Wallpapers/028.jpg

# Run redshift in background (for night light)
redshift &

# Run ibus-daemon in background (for Vietnamese)
nohup ibus-daemon
