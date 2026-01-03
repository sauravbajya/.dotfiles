#!/bin/bash

# Display a menu to choose action
action=$(echo -e "Shutdown\nReboot\nSuspend\nHibernate" | rofi -dmenu -prompt "Power Menu:")

case "$action" in
Shutdown)
  systemctl poweroff
  ;;
Reboot)
  systemctl reboot
  ;;
Suspend)
  systemctl suspend
  ;;
Hibernate)
  systemctl hibernate
  ;;
esac
