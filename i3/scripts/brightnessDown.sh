#!/bin/bash

brightness=$(brightnessctl get)

if [ $brightness -le 0 ]; then
    echo 0
else
    echo $(($brightness - 10))
fi

