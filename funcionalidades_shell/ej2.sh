#!/bin/bash

#ejercicio de prueba 2 - argumentos y valor de retorno
if [ $# -ne 2 ]
then
echo "La cantidad de argumentos debe ser 2"
exit 1 #error
fi

echo "Nombre $1 , Apellido $2"

exit 0


#pasaje de argumentos
#bash ej2.sh vic garcia





