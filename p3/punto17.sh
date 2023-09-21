#!/bin/bash

cat << EOF > coment.txt

Escribir un script que al ejecutarse imprima en pantalla los nombre de los archivos que se encuentran en el directorio actual, intercambiando minúsculas por mayúsculas, además de eliminar la letra a (mayúscula o minúscula). Ejemplo, directorio actual:

IsO
pepE
Maria

Si ejecuto: ./ejercicio17

Obtendré como resultado:
iSo
PEPe
mRI

Ayuda: Investigar el comando tr

COMANDO TR----------------------------------------------------
El comando tr (translate o transformar) es una utilidad de la línea de comandos en sistemas Unix y Unix-like que se utiliza para traducir, eliminar o comprimir caracteres de una entrada estándar y escribirlos en la salida estándar. Es especialmente útil para tareas de transformación de texto como reemplazar caracteres, convertir caracteres de mayúsculas a minúsculas y viceversa, eliminar caracteres no deseados y más.

--> convertir minusculas a mayusculas
echo "hola mundo" | tr 'a-z' 'A-Z'

--> eliminar todas las vocales de una cadena
echo "hola mundo" | tr -d 'aeiou'

--> comprimir una secuencia de espacios repetidos en uno solo
echo "hola    mundo" | tr -s ' '

--> reemplazar caracteres
echo "hola123" | tr '0-9' 'X'


EOF

#imprimo todos los archivos del directorio actual
for archivo in $(ls);
do
echo $archivo
done

echo "         -----         "

#cambio mayusculas x minusculas y vice, elimino aA 
for archivo in $(ls);
do
nombre=$(echo $archivo | tr 'A-Z' 'a-z' | tr 'a-z' 'A-Z' | tr -d 'aA')
echo $nombre
done




