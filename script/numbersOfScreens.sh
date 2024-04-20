#!/bin/bash

# Obtener la salida de xrandr
xrandr_output=$(xrandr)

# Contar el número de monitores conectados, excluyendo eDP
monitor_count=$(echo "$xrandr_output" | awk '/ connected/ && !/eDP/ {print $1}' | wc -l)

# Imprimir el número de monitores conectados
echo $monitor_count
