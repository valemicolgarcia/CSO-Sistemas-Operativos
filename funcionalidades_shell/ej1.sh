#!/bin/bash
echo "Hola Mundo - prueba de echo" #imprime 
root="VALE" #asigno variables
echo " "

echo "Prueba de impresion de variables"
echo ${root} #imprimo variables
echo " "

#ESTRUCTURA DE CONTROL IF
if [ 5 -lt 20 ] 
then
echo "vale es la mas capa - estructura IF/ELSE/FI"
else 
echo "vale no es la mas capa"
fi
echo " "

#ESTRUCTURA DE CONTROL CASE
var="1"
case $var in
"1") 
	echo "entro en el 1"
	;;
"2") 
	echo "entro en el 2"
	;;
*)
	echo "ninguno de los dos"
	;;
esac
echo " "


#ESTRUCTURA DE CONTROL SELECT - MENU DE OPCIONES
# el select sigue ejecutandose hasta que se elija una opcion valida
select action in New Exit
do
	case $action in
	"New")
	echo "Selected option is new"
	;;
	"Exit")
	break  #exit 0
	;;
	esac
done
echo " "


#BLOQUE - FOR
for ((i=0; i < 10; i++))
do
	echo "La iteracion es la nro ${i}"
done
echo " "

#FOREACH -- con lista de valores
for i in value1 value2 value3 valueN;
do 
echo ${i}
done

nombres=("vale" "bau" "joaco" "dolo")

for nombre in "${nombres[*]}"
do
echo "Hola, ${nombre}"
done


echo " "

#WHILE - mientras se cumpla la condicion
num=10
while [ $num -gt 5 ]
do
	echo $num
	((num--))
done

echo " "
#UNTIL - mientras NO se cumpla la condicion
n=10
until [ $n -eq 0 ]
do
echo ${n}
((n--))
done

echo ""
echo "Probando el let"

i=0
let i++
echo $i






