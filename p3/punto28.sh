#!/bin/bash

cat << EOF > coment.txt

Realice un script que reciba como parámetro el nombre de un directorio. Deberá validar que el mismo exista y de no existir causar la terminación del script con código de error Si el directorio existe deberá contar por separado la cantidad de archivos que en él se encuentran para los cuales el usuario que ejecuta el script tiene permiso de lectura y escritura, e informar dichos valores en pantalla. En caso de encontrar subdirectorios, no deberán procesarse, y tampoco deberán ser tenidos en cuenta para la suma a informar.

EOF

if [ $# -ne 1 ];then
echo "La cantidad de argumentos debian ser 1"
exit 1
fi

echo "El nombre del directorio es $1 "

if [ -d $1 ]; then #verifico que exista y sea un directorio
echo "existe y es un directorio"
cant=0 #contador de archivos
for archivo in $1; do
	if [ -r $archivo ] && [ -w $archivo ]; then
	echo "tiene permiso de lectura y escritura"
	((cant++))
	fi
done

else
echo "ERROR -- el argumento no es un directorio"
exit 4
fi

echo "La cantidad directorios es $cant "
