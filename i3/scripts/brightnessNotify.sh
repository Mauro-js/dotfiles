#!/bin/bash

brightness=$(echo 400 | brightnessctl get)
percentage=$((brightness * 100 / 255))

echo $percentage

exec notify-send -i /usr/share/icons/Win11-blue-dark/status/22/notification-display-brightness.svg "Brightness: " "$percentage%"

