#!/bin/bash

# Obtiene la salida de pantalla actual
current_outputs=$(xrandr | grep " connected" | awk '{print $1}')

# Compara la salida actual con la última salida conocida
if [ "$current_outputs" != "$last_outputs" ]; then
    # Actualiza la configuración de i3wm
    # Por ejemplo, puedes reiniciar i3wm
    i3-msg restart
fi

# Guarda la salida actual para la próxima comparación
last_outputs="$current_outputs"
