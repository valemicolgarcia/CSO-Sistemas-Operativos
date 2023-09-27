#!/bin/bash

cat << EOF > coment.txt

Realice un script que implemente a través de la utilización de funciones las operaciones básicas sobre arreglos:

inicializar: Crea un arreglo llamado array vacío
agregar_elem <parametro1>: Agrega al final del arreglo el parámetro recibido
eliminar_elem <parametro1>: Elimina del arreglo el elemento que se encuentra en la posición recibida como parámetro. Debe validar que se reciba una posición válida

longitud: Imprime la longitud del arreglo en pantalla
imprimir: Imprime todos los elementos del arreglo en pantalla

inicializar_Con_Valores <parametro1><parametro2>: Crea un arreglo con longitud <parametro1>y en todas las posiciones asigna el valor <parametro2>

EOF

#operaciones basicas con arreglos



inicializar () {
	array=()
}

agregar_elem(){
	array+=($1)
}

eliminar_elem(){
	if [ $1 -lt ${#array[*]} ]; then
	echo "Posicion valida"
	unset array[$1]
	else
	echo "La posicion no es valida"
	fi
}

longitud(){
	echo "La longitud del arreglo es ${#array[*]}"
}

imprimir(){
	echo ${array[*]}
}

inicializar_con_valores(){
longitud=$1
valor=$2
array=()
for ((i=0; i<longitud; i++)); do
	array[$i]=$valor
done
}





#-----------MAIN------------

inicializar 
imprimir

agregar_elem vale
agregar_elem joaco
agregar_elem dolo
agregar_elem bau
imprimir

longitud

eliminar_elem 1
imprimir

longitud

inicializar_con_valores 5 hola 
imprimir
longitud



