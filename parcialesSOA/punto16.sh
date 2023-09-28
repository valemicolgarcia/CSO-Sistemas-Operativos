#!/bin/bash

#verificacion de parametros
if [ $# -lt 1 ]; then
echo "Se debe recibir por lo menos un parametro"
exit 1
fi

contador=0

#cada parametro es la ruta de un archivo o directorio en el sistema

#iterar sobre todos los parametros recibidos

for ruta in ${@}; do
	
	if [ -f $ruta ]; then #si existe y es un archivo
		gzip $ruta #comprimo el archivo
	elif [ -d $ruta ]; then #si existe y es un directorio
		if [ -r $ruta ]; then #si tiene permiso de lectura
			tar -cvzf ./empaquetadoo.tar.gz $ruta  #empaqueto -c (nuevo archivo) -z (habilita compresion gzip) y -f (especificar el nombre del archivo de almacenamiento resultante)
		elif [ -w $ruta ]; then
			rm -r $ruta #elimino directorios y su contenido, si no pongo el -r solo eliminara directorios cuando esten vacios
		fi
	else
		((contador++)) #o let contador++
	fi
	
done

echo "La cantidad de parametros inexistentes es: $contador "

