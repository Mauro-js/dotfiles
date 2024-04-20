#!/bin/bash

# Ejecutar el comando curl y guardar la salida en una variable
response=$(curl -s "gitlabpan.sva.antel.com.uy")

# Verificar si la salida contiene "You are being"
if [[ $response == *"You are being"* ]]; then
    echo 
    echo #ffb52a
else
    echo 
fi
