#!/bin/bash

# Options with icons
entries=" Shutdown\n Restart\n Suspend\n Hibernate\n Logout\n Lock"

selected=$(echo -e "$entries" | wofi --width 250 --height 380 --dmenu --cache-file /dev/null --prompt "Power Menu" --allow-images=false | awk '{print tolower($2)}')

case "$selected" in
  shutdown)
    systemctl poweroff ;;
  restart)
    systemctl reboot ;;
  suspend)
    systemctl suspend ;;
  hibernate)
    systemctl hibernate ;;
  logout)
    hyprctl dispatch exit ;;
  lock)
    hyprlock ;;  # Or swaylock if you use that
esac
