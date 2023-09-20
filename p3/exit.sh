#!/bin/bash
#exit
# 0 indica exito
# cualquier valor entre 1 y 255 indica error o condicion inusual


if [ $# -ne 2 ]
then
echo "La cantidad de argumentos debe ser 2"
exit 1 #error
fi

echo "Nombre $1 , Apellido $2"
exit 0

