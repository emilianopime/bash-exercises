#!/bin/bash

saludar() {
    echo "Hola, bienvenido a bash!"
}

saludar
# Definición de la función

saludar2() {
    echo "Hola, $1 bienvenido a bash!"
}
saludar2 "Juan"
# Definición de la función
saludar3() {
    echo "Hola, $1 $2 bienvenido a bash!"
}
saludar3 "Juan" "Pérez"


sumar() {
    echo "La suma de $1 + $2 es: $(($1 + $2))"
}
sumar 5 10

echo "-----------------"
echo "elige un numero"
read numero1
echo "elige otro numero"
read numero2
# Definición de la función
sumar() {
    echo "La suma de $numero1 + $numero2 es: $(($numero1 + $numero2))"
    total=$((numero1 + numero2))
}
sumar

totalDivision() {
    echo "La division de $total / $1 es: $(($total / $1))"
}
totalDivision 5