#!/bin/bash

if pgrep -x "spotify" > /dev/null
then

playerctl next -p spotify

else
    echo " "
fi
