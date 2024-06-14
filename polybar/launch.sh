#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until all instances are terminated
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bottom 2>&1 | tee -a /tmp/bottom.log & disown

# Check if HDMI-A-0 is connected
if xrandr | grep -q 'HDMI-A-0 connected'; then
    polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
    #polybar bottom2 2>&1 | tee -a /tmp/bottom2.log & disown
fi
