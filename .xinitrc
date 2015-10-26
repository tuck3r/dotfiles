#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

pulseaudio --start &
mpd &
parcellite &
pidgin &
dropboxd &
#connman-ui-gtk &
cmst -m &
xautolock -detectsleep -time 4 -locker "i3lock -d -c 121212" &
kalu &

#devmon is for automounting disks.
devmon &

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec i3
#exec startx
