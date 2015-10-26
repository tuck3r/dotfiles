#!/bin/sh

exec xautolock -detectsleep 
  -time 4 -locker "i3lock -d -c 121212" \
#  -notify 30 \
#  -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"
