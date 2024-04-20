#!/bin/bash
if pgrep -x "spotify" > /dev/null
then
# Comando para verificar el estado de reproducción con SpotifyCLI
status=$(spotifycli --playbackstatus)


# Verifica si el estado incluye "Playing"
if [[ $status == "▶" ]]; then
    echo "    "
else
    echo "    "
fi

else
    echo " "
fi
