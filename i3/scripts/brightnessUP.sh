#!/bin/bash

brightness=$(brightnessctl get)

if [ $brightness -ge 255 ]; then
    echo 255
else
    echo $(($brightness + 10))
fi
