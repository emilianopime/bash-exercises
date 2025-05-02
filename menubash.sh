#!/bin/bash

# Función para sumar
sumar() {
    echo "La suma de $1 + $2 es: $(($1 + $2))"
    return $(($1 + $2))
}

# Función para restar
restar() {
    echo "La resta de $1 - $2 es: $(($1 - $2))"
    return $(($1 - $2))
}

# Función para multiplicar
multiplicar() {
    echo "La multiplicación de $1 * $2 es: $(($1 * $2))"
    return $(($1 * $2))
}

# Función para dividir
dividir() {
    if (( $2 != 0 )); then
        echo "La división de $1 / $2 es: $(($1 / $2))"
        return $(($1 / $2))
    else
        echo "Error: No se puede dividir entre 0."
        return 0
    fi
}

# Bucle principal
resultado=0
while true; do
    echo "-----------------"
    echo "Elige una operación:"
    echo "1) Sumar"
    echo "2) Restar"
    echo "3) Multiplicar"
    echo "4) Dividir"
    echo "5) Salir"
    read -p "Opción: " opcion

    if (( opcion == 5 )); then
        echo "Saliendo de la calculadora. ¡Adiós!"
        break
    fi

    if (( resultado == 0 )); then
        read -p "Elige el primer número: " numero1
    else
        numero1=$resultado
        echo "Usando el resultado anterior: $numero1"
    fi

    read -p "Elige el segundo número: " numero2

    case $opcion in
        1) sumar $numero1 $numero2; resultado=$? ;;
        2) restar $numero1 $numero2; resultado=$? ;;
        3) multiplicar $numero1 $numero2; resultado=$? ;;
        4) dividir $numero1 $numero2; resultado=$? ;;
        *) echo "Opción no válida. Intenta de nuevo." ;;
    esac

    echo "El resultado actual es: $resultado"
done