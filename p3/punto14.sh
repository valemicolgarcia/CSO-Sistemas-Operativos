#!/bin/bash

cat << EOF > coment.txt

Renombrando Archivos: haga un script que renombre solo archivos de un directorio pasado como parametro agregandole una CADENA, contemplando las opciones:
“-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del
archivo
“-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre
del archivo

Ejemplo:
Si tengo los siguientes archivos: /tmp/a /tmp/b
Al ejecutar: ./renombra /tmp/ -a EJ
Obtendré como resultado: /tmp/aEJ /tmp/bEJ
Y si ejecuto: ./renombra /tmp/ -b EJ
El resultado será: /tmp/EJa /tmp/EJb


EOF

if [ $# -ne 1 ]; then
echo "La cantidad de parametros debian ser 1"
fi

archivo=$1
echo "EL nombre del archivo es ${archivo}"

echo "Ingrese la cadena por la que se quiere renombrar el archivo"
read cadena

if  [ -e $archivo ]; then
echo "El archivo existe"
else 
echo "El archivo no existe"
fi


select option in a b
do
	case $option in
	"a")
	echo "se eligio la opcion a"
	mv "$archivo" "${archivo}${cadena}"
	break
	;;
	
	"b")
	echo "se eligio la opcion b"
	mv "$archivo" "${cadena}${archivo}"
	break
	;;
	
	*)
	echo "no se eligio ninguna opcion valida"
	break
	;;
	esac

done

