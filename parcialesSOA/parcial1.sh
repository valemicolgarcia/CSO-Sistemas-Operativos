#!/bin/bash
#parcial 1

cat << EOF > coment.txt

realizar script: 

- Procesar archivos de log, que reciba como argumentos una fecha y una o mas direcciones IP 
(se encuentran en el /var/log)

- Verificar que la fecha exista sino salta error

- indique la cantidad de accesos que cada direccion IP ha realizado al servidor en la fecha que se recibe como primer argumento

- La salida del script debe informar, utilizando dos columnas:
columna 1 --la direccion IP 
columna 2 --cant de accesos que se registraron desde esa direccion IP

EOF

#verifico que se hayan recibido bien los parametros
if [ $# -ne 2 ]; then
	echo "Debe recibir dos parametros"
	exit 1
fi

#listo todos los archivos del /var/log LS
#me quedo con la fila dos, separados con el delimitador "." (acces.X.log, donde X es la fecha)
#busco la fecha pasada como parametro
#cuento las fechas encontradas

if [ $(ls /var/log | cut -d "." -f2 | grep $1 | wc -l) -eq 0 ]; then
	echo "ERROR --> La fecha no existe"
	exit 2
fi

echo " IP - ACCESOS EN LA FECHA"


#${@} -- todos los argumentos pasados al script
#${@:2} -- todos los argumentos despues del segundo

for ip in ${@:2} ; do 

cant=$( cat /var/log/access.$1.log | cut -d "-" -f1 | grep $ip | wc -l )

#cat muestra el contenido del archivo /var/log/access.$1(fecha).log(termina asi el nombre)
#cut delimita con -, y me agarra la primer columna
#grep busca el ip en el archivo seleccionado de la fecha
#wc -l cuenta la cantidad de apariciones del IP en esa fecha

echo " $ip - $cant "

done











