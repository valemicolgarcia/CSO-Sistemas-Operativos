#!/bin/bash
cat << EOF > coment.txt

Uso de las estructuras de control:
(a) Realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados.

EOF

for ((i=1; i<101; i++))
do
	echo "El numero es $i"
	cuadrado=$(expr $i '*' $i)
	echo "Su cuadrado es $cuadrado"
done
