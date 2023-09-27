#!/bin/bash

cat << EOF > coment.txt

Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema
pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parametro:
“-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso
contrario, un mensaje de error.
“-l”: Devuelve la longitud del arreglo
“-i”: Imprime todos los elementos del arreglo en pantalla

EOF

#compruebo que se pasen bien los parametros
if [ $# -ne 2 ]; then
	echo "Deben pasarse dos parametros: -b n, -l, -i"
	exit 1
fi

#pongo los usuarios en el arreglo
usuarios=($(cat /etc/group | grep users | cut -d: -f4 | tr ',' ' '))

echo "Imprimo arreglo para ver si se lleno correctamente"
echo $usuarios

#dependiendo del parametro se realiza una accion u otra
case $1 in 
	-b)
	if [ $2 -lt ${#usuarios[*]} ]; then
	echo "El elemento de la posicion $2 es ${usuarios[$2]}"
	else
	echo "MENSAJE DE ERROR--> La posicion no existe"
	fi
	;;
	-l)
	echo "La longitud del arreglo es ${#usuarios[@]}"
	echo "La longitud del arreglo es ${#usuarios[*]}"
	;;
	-i)
	echo "Elementos del arreglo: "
	for elem in ${usuarios[@]};do
	echo "$elem"
	done
	;;
	*)
	
	;;
esac





