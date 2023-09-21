#!/bin/bash
cat << EOF > coment.txt

Uso de las estructuras de control:

(c) Crear un script que reciba como parámetro el nombre de un archivo e informe si el mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En caso de que no exista el archivo/directorio cree un directorio con el nombre recibido como parámetro.

comando test
-d archivo : Verdadero si el archivo existe y es un directorio.
-e archivo : Verdadero si el archivo existe.
-f archivo : Verdadero si el archivo existe y es un archivo regular.

comando mkdir para crear directorios

EOF
echo "el nombre del archivo es $1 "

if [ -e $1 ]; then 
	if [ -d $1 ]; then
		echo "El archivo existe y es un directorio"
	elif [ -f $1 ]; then
		echo "El archivo existe y es un archivo regular"
	else 
		echo "Existe pero no es ni un directorio ni un archivo"
	fi
else
	echo "El archivo no existe entonces lo creo"
	mkdir "$1"
	
	if [ $? -eq 0 ]; then
		echo "Se creo el archivo correctamente"
	else
		echo "No se pudo crear el archivo"
	fi
	
	

fi




