#!/bin/bash

# Simmons Tech Raspberry Pi Kiosk Dashboard Boot Script
# By Michael Holachek and Will Oursler
# Version 0.1

# Purpose: boots Raspberry Pi into Simmons Dashboard automatically

# To run on startup:
# Add this code to /etc/init.d/start-kiosk.sh
# Ensure executable permissions with chmod: chmod +x /etc/init.d/start-kiosk.sh
# Add script to boot: sudo update-rc.d start-kiosk.sh defaults

# Init display for chromium
export DISPLAY=:0

# Start X window system in background
startx &

# Start dashboard in kiosk mode
chromium --kiosk --disable-translate --incognito http://simmons-dev.mit.edu/dashboard/lightweight --user-data-dir /home/simmons-tech/