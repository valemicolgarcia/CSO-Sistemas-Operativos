#!/bin/bash

cat << EOF > coment.txt

Dada la definición de 2 vectores del mismo tamaño y cuyas longitudes no se conocen.
vector1=( 1 .. N)
vector2=( 7 .. N)
Por ejemplo:
vector1=( 1 80 65 35 2 )
y
vector2=( 5 98 3 41 8 ).

Complete este script de manera tal de implementar la suma elemento a elemento entre ambos vectores y que la misma sea impresa en pantalla de la siguiente manera:

La suma de los elementos de la posición 0 de los vectores es 6
La suma de los elementos de la posición 1 de los vectores es 178
...
La suma de los elementos de la posición 4 de los vectores es 10

EOF

vector1=( 1 80 65 35 2 )
vector2=( 5 98 3 41 8 )
tamanio=${#vector1[@]}

for (( i=0; i < $tamanio; i++ ))
do
	suma=0
	suma=$((vector1[i] + vector2[i]))
	echo "La suma de los elementos de la posicion $i es $suma"
done





