#!/bin/bash

cat << EOF > coment.txt

Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invocación (debe validar que al menos se reciba uno). 
Cada parámetro representa la ruta absoluta de un archivo o directorio en el sistema. El script deberá iterar por todos los parámetros recibidos, y solo para aquellos parámetros que se encuentren en posiciones impares (el primero, el tercero, el q
verificar si el archivo o directorio existen en el sistema, imprimiendo en pantalla que tipo de objeto es (archivo o directorio). 
Además, deberá informar la cantidad de archivos o directorios inexistentes en el sistema

EOF
#verifico si los parametros son los correctos
if [ $# -lt 1 ]; then
	echo "La cantidad de parametros debe ser al menos 1"
	exit 1
fi

inexistentes=0

echo "$1"

for (( i=1; i<$# ; i+=2 )); do
	#controlo si es archivo o directorio
	if [ -e $($i) ]; then
	echo "Existe el archivo"
		if [ -d $i ]; then
		echo "Es un directorio"
		else 
		echo "Es un archivo"
		fi
	else
	((inexsistentes++))
	echo "No existe el archivo"
	fi
done

echo "La cantidad de archivos inexistentes es $inexsistentes "







