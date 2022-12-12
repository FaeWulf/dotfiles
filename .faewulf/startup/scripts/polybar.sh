#!/bin/bash


#this script for kde only, if want to use poly's systray
#pkill xembedsniproxy

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Wait until the processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar main 2>&1 | tee -a /tmp/polybar.log & disown

echo "polybar here"
