#!/bin/bash
#arreglos en shell

#INICIALIZACION
arreglo=() #arreglo vacio
arreglo_2=(1 2 3 4 5 6 7 8 9 10) #arreglo inicializado

echo "El arreglo 1 deberia estar vacio : ${arreglo[*]} "
echo "El arreglo 2 es: ${arreglo_2[*]} " #con [*] muestro todos los elementos

#ACCESO A VALORES
echo "Cambio la tercera posicion por vale"
arreglo_2[2]=vale
echo "La posicion que cambie se muestra asi ${arreglo[2]} "
echo "El arreglo 2 es: ${arreglo_2[*]} "

arreglo[1]=chau
arreglo[2]=13
echo "El arreglo que estaba vacio ahora es: ${arreglo[*]}"

#BORRADO DE ELEMENTOS
echo "Elimine el primer elemento del arreglo"
unset arreglo[1]
echo "Elimine el vale del arreglo 2"
unset arreglo_2[2]

echo "El primer arreglo ahora es ${arreglo[*]}"
echo "El primer arreglo ahora es ${arreglo_2[*]}"



