#!/bin/bash

# Ejecutar el comando y filtrar la salida para obtener información relevante
output=$(bluetoothctl devices | cut -f2 -d' ' | while read uuid; do bluetoothctl info $uuid; done | grep -e "Device\|Connected\|Name")

# Verificar si el dispositivo está conectado
if echo "$output" | grep -q "Device 84:D3:52:9B:10:CD"; then
    if echo "$output" | grep -q "Connected: yes"; then
        echo ""
    else
        echo ""
    fi
fi
