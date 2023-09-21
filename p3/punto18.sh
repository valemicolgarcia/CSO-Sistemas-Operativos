#!/bin/bash

cat << EOF > coment.txt

Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema (el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee, el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.

EOF

if [ $# -ne 1 ]; then
echo " se debe pasar 1 argumento"
exit 1
fi

usuario=$1
while [ true ];
do
	#la salida del comando who (lista de usuarios conectados al sistema)
	#se pasa como entrada al comando grep -q
	#el comando grep -q busca el nombre el usuario en la lista
	
	if who | grep -q $usuario; then
	echo "El usuario $usuario esta logueado"
	break
	fi
	
	sleep 10
	
done

#grep -q --> busqueda silenciosa
#grep --> muestra las lineas que coinciden en pantalla
