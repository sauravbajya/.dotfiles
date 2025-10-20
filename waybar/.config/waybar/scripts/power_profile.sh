#!/bin/bash

# Gets the current active power profile
profile=$(powerprofilesctl get)

# Optional: prettify values for display
case "$profile" in
    power-saver) icon="Power Saver" ;;
    performance) icon="Performance" ;;
    balanced) icon="Balanced" ;;
    *) icon="$profile" ;;
esac

echo "$icon"

