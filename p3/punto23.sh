#!/bin/bash
#estructuras de control
cat << EOF > coment.txt

23. Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla sólo los números pares y que cuente sólo los números impares y los informe en pantalla al finalizar el recorrido.

EOF

arreglo=(1 2 3 4 5 6 7 8 9)
echo ${arreglo[@]}
contador=0
for (( i=0; i<${#arreglo[@]}; i++ )) #recorro todo el arreglo
do
	if (( ${arreglo[i]} % 2 == 0 )); then
	echo "El numero es par: ${arreglo[i]}"
	else
	((contador++)) #el numero es impar
	fi
done

echo "El numero de numeros impares es $contador"


