#!/bin/bash

# Comprobar si Spotify está en ejecución
if pgrep -x "spotify" > /dev/null
then
    echo "Spotify está en ejecución."
else
    echo "Spotify no está en ejecución."
fi
