#!/bin/bash

# 1. Define the exact profile names from your hardware
SPEAKER_PROF="HiFi (HDMI1, HDMI2, HDMI3, Mic1, Mic2, Speaker)"
HEADPHONE_PROF="HiFi (HDMI1, HDMI2, HDMI3, Headphones, Mic1, Mic2)"

# 2. Detect Current Active Profile
# We check the 'Active Profile' of Card 45
current_active=$(pactl list cards | grep -A 50 "Card #45" | grep "Active Profile" | cut -d: -f2- | xargs)

# 3. Determine the index to preselect (0 for Speakers, 1 for Headphones)
if [ "$current_active" == "$SPEAKER_PROF" ]; then
    PRESELECT="Wired Headphones"
elif [ "$current_active" == "$HEADPHONE_PROF" ]; then
    PRESELECT="Laptop Speakers"
else
    PRESELECT="Wired Headphones" # Default to first item if unknown
fi

# 4. Create the menu for Wofi
# Format: Name displayed in Wofi
options="Laptop Speakers
Wired Headphones"

#5. Show Wofi menu
choice=$(echo "$options" | wofi --width 250 --height 90 --dmenu --cache-file /dev/null --prompt "Switch Audio Mode:" -j --search $PRESELECT)

# 6. Logic to switch based on choice
if [ "$choice" == "Laptop Speakers" ]; then
    pactl set-card-profile 45 "$SPEAKER_PROF"
    notify-send "Audio Switched" "Mode: Internal Speakers" -i audio-speakers
elif [ "$choice" == "Wired Headphones" ]; then
    pactl set-card-profile 45 "$HEADPHONE_PROF"
    notify-send "Audio Switched" "Mode: Wired Headphones" -i audio-headphones
fi
