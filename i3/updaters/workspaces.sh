#!/bin/bash

# Detectar la salida actual de los monitores
current_outputs=$(xrandr | grep " connected" | awk '{print $1}')

# Definir la configuración de los espacios de trabajo
if [[ "$current_outputs" == *"HDMI-A-0"* ]]; then
    i3-msg 'workspace 1 output eDP'
    i3-msg 'workspace 2 output HDMI-A-0'
    i3-msg 'workspace 3 output eDP'
    i3-msg 'workspace 4 output HDMI-A-0'
    i3-msg 'workspace 5 output HDMI-A-0'
    i3-msg 'workspace 6 output HDMI-A-0'
    i3-msg 'workspace 7 output eDP'
    i3-msg 'workspace 8 output eDP'
    i3-msg 'workspace 9 output eDP'
    i3-msg 'workspace 10 output eDP'
else
    # Si no se detecta ningún monitor externo, asignar todos los espacios de trabajo a eDP
    i3-msg 'workspace 1 output eDP'
    i3-msg 'workspace 2 output eDP'
    i3-msg 'workspace 3 output eDP'
    i3-msg 'workspace 4 output eDP'
    i3-msg 'workspace 5 output eDP'
    i3-msg 'workspace 6 output eDP'
    i3-msg 'workspace 7 output eDP'
    i3-msg 'workspace 8 output eDP'
    i3-msg 'workspace 9 output eDP'
    i3-msg 'workspace 10 output eDP'
fi
