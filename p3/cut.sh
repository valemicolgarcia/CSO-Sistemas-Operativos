#!/bin/bash

cat << EOF > coment.txt

15. Comando cut. El comando cut nos permite procesar la líneas de la entrada que reciba (archivo, entrada estándar, resultado de otro comando, etc) y cortar columnas o campos,siendo posible indicar cual es el delimitador de las mismas. Investigue los parámetros que puede recibir este comando y cite ejemplos de uso.

-b LISTA: Selecciona los bytes de la entrada especificada por LISTA.
-c LISTA: Selecciona los caracteres de la entrada especificada por LISTA.

-d DELIMITADOR: Utiliza DELIMITADOR en lugar del delimitador de tabulación por defecto para campos.
-f LISTA: Selecciona los campos separados por el delimitador (especificado con -d).

--complement: Selecciona todos los bytes, caracteres o campos no especificados por -b, -c o -f.
--output-delimiter=STRING: Utiliza STRING como delimitador de salida en lugar del delimitador de entrada.

EOF

#cortar por byte: cut -b
echo "HolaVale" | cut -b 1-4 
#cortar por caracter: cut -c
echo "HolaBau" | cut -c 5-7

#delimita con "," --> el -f selecciona la primer columna : cut -d -f
cut -d "," -f 1 textodelimitado.txt

#cambio un delimitador por otro (no cambia el archivo): --output-delimiter
cut -d "," -f 1,3 --output-delimiter=' - ' textodelimitado.txt


