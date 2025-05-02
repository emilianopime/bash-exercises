echo "imprimir un arreglo en una sola linea y al final imprimir el tamaño del arreglo"
arreglo=(1 2 3 4 5 6 7 8 9 10)
echo -e "${arreglo[@]}"
echo "El tamaño del arreglo es: ${#arreglo[@]}"
echo "imprimir un arreglo en varias lineas y al final imprimir el tamaño del arreglo"
for i in ${arreglo[@]}; do
    echo -e "$i"
done
