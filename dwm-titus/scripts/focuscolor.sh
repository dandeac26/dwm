#!/bin/bash

# Check if xdotool is installed
if ! command -v xdotool &> /dev/null; then
    echo "#D8DEE9"  # Default color if xdotool is missing
    exit 0
fi

# Get the currently focused window's title
focused_window=$(xdotool getwindowfocus getwindowname 2>/dev/null)

# Define colors for focused and unfocused windows
focus_color="#ECEFF4"  # White
unfocus_color="#D8DEE9"  # Light Grey

# Check if the window name was retrieved, fallback to default color
if [ -z "$focused_window" ]; then
    echo "$unfocus_color"
else
    echo "$focus_color"
fi

