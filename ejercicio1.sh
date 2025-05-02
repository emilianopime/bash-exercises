#!/bin/bash

echo -e "hola a todos los $USER"
echo " Te encuentras en la ruta"
echo "$(pwd)"

for i in *; do
    echo -e "$(ls -l $i | awk '{print $1, $NF}')"
done