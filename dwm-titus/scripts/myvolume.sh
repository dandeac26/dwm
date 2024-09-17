#!/bin/bash

# Get the current volume level using amixer
amixer get Master | awk -F'[][]' '/Left:/ { print $2 }' | head -n1
