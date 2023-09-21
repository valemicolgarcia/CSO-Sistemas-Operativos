#!/bin/bash
cat << EOF > coment.txt

2. Evaluación de expresiones:
(a) Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.

(b) Modificar el script creado en el inciso anterior para que los números sean recibidos como parámetros. El script debe controlar que los dos parámetros sean enviados.

(c) Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %. Esta calculadora debe funcionar recibiendo la operación y los números como parámetros

EOF

if [ $# -ne 3 ]; then
	echo "La cantidad de argumentos debe ser tres"
	exit 1
fi

echo "La cantidad de argumentos es correcta"
echo "La cuenta que se quiere hacer es: $1 $2 $3"

case $2 in
	"+") 
	suma=$(expr $1 + $3)
	echo "La suma es ${suma}"
	;;
	"-")
	resta=$(expr $1 - $3)
	echo "La resta es ${resta}"
	;;
	"*")
	multi=$(expr $1 '*' $3) #para pasarlo como paramtero hay que mandarlo con '*'
	echo "El producto es ${multi}"
	;;
	"/")
	cociente=$(expr $1 / $3)
	echo "El cociente es ${cociente}"
	;;
esac



