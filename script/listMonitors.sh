#!/bin/bash

# Obtener la salida de xrandr
xrandr_output=$(xrandr)

# Filtrar la salida para obtener solo los nombres de los monitores conectados
monitor_names=$(echo "$xrandr_output" | awk '/ connected/ {print $1}')

# Imprimir los nombres de los monitores conectados
echo "$monitor_names"
