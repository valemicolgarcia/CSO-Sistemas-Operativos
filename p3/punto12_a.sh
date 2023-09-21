#!/bin/bash
cat << EOF > coment.txt

2. Evaluación de expresiones:
(a) Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.

(b) Modificar el script creado en el inciso anterior para que los números sean recibidos como parámetros. El script debe controlar que los dos parámetros sean enviados.

(c) Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %. Esta calculadora debe funcionar recibiendo la operación y los números como parámetros

EOF

echo "Ingrese dos numeros"
read n1 n2
echo "El primer numero es $n1 y el segundo es $n2"

suma=$(expr $n1 + $n2)
resta=$(expr $n1 - $n2)
multiplicacion=$(expr $n1 '*' $n2)
division=$(expr $n1 / $n2)


echo "La suma de ellos es $suma"
echo "La resta de ellos es $resta"
echo "El producto de ellos es $multiplicacion"
echo "El cociente de ellos es $division"




