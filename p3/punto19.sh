#!/bin/bash

cat << EOF > coment.txt

Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menu, el cual, al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados en esta práctica. Las instrucciones de como proceder deben mostrarse junto con el menú.
El menú deberá iniciarse y permanecer activo hasta que se seleccione Salir. Por ejemplo:

MENU DE COMANDOS
03. Ejercicio 3
12. Evaluar Expresiones
13. Probar estructuras de control
...
Ingrese la opción a ejecutar: 03

EOF

echo "MENU DE COMANDOS AMIGABLE CON EL USUARIO"
select opcion in $(ls)
do
echo $opcion
	case $opcion in
	
		"cut.sh")
		chmod +x cut.sh #le doy permiso de ejecucion
		./cut.sh
		;;
		"punto12_a.sh")
		chmod +x punto12_a.sh #le doy permiso de ejecucion
		./punto12_a.sh
		;;
		"mostrar.sh")
		./mostrar.sh
		;;
		*)
		echo "No se eligio bien"
		exit 0
	
	esac
done



