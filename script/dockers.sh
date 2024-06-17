#!/bin/bash

# Verificar si el servicio Docker está corriendo
if ! systemctl is-active --quiet docker; then
    echo 
    exit 0
fi

# Obtener el recuento de todos los contenedores en ejecución
container_count=$(docker ps | wc -l)

# Restar 1 para excluir la línea de encabezado
container_count=$((container_count - 1))

# Imprimir un espacio si container_count es 0, de lo contrario, imprimir el número
if [ $container_count -eq 0 ]; then
    echo " "
else
    echo "$container_count"
fi
