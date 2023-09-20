#!/bin/bash
#comando TEST --> se utliza para evaluar expresiones condicionales
#[ expresion ] equivalente a test

archivo="/home/valedebian/UNLP/CSO/p3"
#la ruta la copie con ctrl L
if  [ -e $archivo ]; then
echo "El archivo existe"
else 
echo "El archivo no existe"
fi



cat << EOF > coment.txt

Tipo de expresiones que pueden ser usadas con el comando test:

    Evaluación de Archivos:
        -d archivo : Verdadero si el archivo existe y es un directorio.
        -e archivo : Verdadero si el archivo existe.
        -f archivo : Verdadero si el archivo existe y es un archivo regular.
        -r archivo : Verdadero si el archivo existe y se puede leer.
        -s archivo : Verdadero si el archivo existe y tiene un tamaño mayor a cero.
        -w archivo : Verdadero si el archivo existe y se puede escribir.
        -x archivo : Verdadero si el archivo existe y es ejecutable.

    Evaluación de Cadenas de Caracteres:
        -z cadena : Verdadero si la longitud de la cadena es 0.
        -n cadena : Verdadero si la longitud de la cadena no es 0.
        cadena1 = cadena2 : Verdadero si las cadenas son iguales.
        cadena1 != cadena2 : Verdadero si las cadenas no son iguales.

    Evaluaciones Numéricas:
        numero1 -eq numero2 : Verdadero si los números son iguales.
        numero1 -ne numero2 : Verdadero si los números no son iguales.
        numero1 -gt numero2 : Verdadero si numero1 es mayor que numero2.
        numero1 -ge numero2 : Verdadero si numero1 es mayor o igual que numero2.
        numero1 -lt numero2 : Verdadero si numero1 es menor que numero2.
        numero1 -le numero2 : Verdadero si numero1 es menor o igual que numero2.




EOF




