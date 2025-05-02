echo "Los numeros del 1 al 10 son:"
for i in {1..10}; do
    echo -e "$i"
done
echo "Aqui van los numeros impares y pares del 1 al 10"
for i in {1..10}; do
    if (( $i % 2 == 0 )); then
        echo -e "$i es par"
    else
        echo -e "$i es impar"
    fi
done