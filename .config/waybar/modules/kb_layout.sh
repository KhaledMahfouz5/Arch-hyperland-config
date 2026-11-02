#!/bin/bash
# Get the active layout for the main keyboard
layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')

if [[ "$layout" == "English (US)" ]]; then
    echo '{"text": "EN", "class": "en"}'
else
    echo '{"text": "AR", "class": "ar"}'
fi
