#!/bin/bash

#ejercicio 3 de prueba - funciones

function sumar {
num=$(($1+$2))
echo ${num}
#return $num
return 0
}

sumar 5 6
echo "El status de la funcion es $? " #imprime el exit status de la funcion


