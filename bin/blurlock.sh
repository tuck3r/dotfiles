#!/bin/bash
# requires 'imagemagick, scrot, & i3lock'
scrot /tmp/screen.png
#convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
convert /tmp/screen.png -scale 25% -scale 400% /tmp/screen.png
#[[ -f /home/jasper/.config/i3/lockicon.png ]] && convert /tmp/screen.png /home/jasper/.config/i3/lockicon.png -gravity center -composite -matte /tmp/screen.png
#i3lock -u -i /tmp/screen.png
i3lock -d -i /tmp/screen.png
