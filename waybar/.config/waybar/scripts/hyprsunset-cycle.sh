#!/usr/bin/env bash

# Get current temperature (just the number, e.g. 6500)
temp=$(hyprctl hyprsunset temperature 2>/dev/null)

# Default to "day" if detection fails or hyprsunset not running
current="day"

if [[ "$temp" =~ ^[0-9]+$ ]]; then
  if ((temp >= 6000)); then # ~6500K → Day
    current="day"
  elif ((temp >= 4000)); then # ~4500K → Evening
    current="evening"
  else # ~3000K or lower → Night
    current="night"
  fi
fi

# Cycle to the next profile
case "$current" in
day)
  # Switch to Evening
  hyprctl hyprsunset temperature 4500 >/dev/null 2>&1
  hyprctl hyprsunset gamma 90 >/dev/null 2>&1
  icon="" # Warm evening sun/cloud (Nerd Font)
  tooltip="hyprsunset: Evening (4500K, 0.9 gamma)"
  ;;
evening)
  # Switch to Night
  hyprctl hyprsunset temperature 3000 >/dev/null 2>&1
  hyprctl hyprsunset gamma 75 >/dev/null 2>&1
  icon="" # Moon (night)
  tooltip="hyprsunset: Night (3000K, 0.75 gamma)"
  ;;
*)
  # Switch to Day (or reset if unknown)
  hyprctl hyprsunset temperature 6500 >/dev/null 2>&1
  hyprctl hyprsunset gamma 100 >/dev/null 2>&1
  icon="" # Bright sun (day)
  tooltip="hyprsunset: Day (6500K, 1.0 gamma)"
  ;;
esac

# Output ONLY clean JSON for Waybar
echo "{\"text\":\"$icon\",\"tooltip\":\"$tooltip\"}"
