

echo "Esto es una calculadora usando case"
echo "Introduce el primer numero"
read num1
echo "Introduce el segundo numero"
read num2
echo "Introduce la operacion a realizar"
echo "1. Sumar"
echo "2. Restar"
echo "3. Multiplicar"
echo "4. Dividir"
read operacion
case $operacion in
    1)
        resultado=$((num1 + num2))
        echo "La suma de $num1 y $num2 es: $resultado"
        ;;
    2)
        resultado=$((num1 - num2))
        echo "La resta de $num1 y $num2 es: $resultado"
        ;;
    3)
        resultado=$((num1 * num2))
        echo "La multiplicacion de $num1 y $num2 es: $resultado"
        ;;
    4)
        if [ $num2 -ne 0 ]; then
            resultado=$((num1 / num2))
            echo "La division de $num1 y $num2 es: $resultado"
        else
            echo "Error: Division por cero no permitida."
        fi
        ;;
    *)
        echo "Operacion no valida."
        ;;
esac