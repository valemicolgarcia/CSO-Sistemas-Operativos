#!/bin/bash

#break y continue dentro de un bloque
#break --> sale del bucle en el que se encuentra
#continue --> omite el resto del cuerpo del bucle y vuelve a evaluar la condicion en la siguiente iteracion

#ejemplo de break
i=5
while [ $i -lt 10 ]
do
	((i--))
	if [ $i -eq 1 ];
	then
	 	echo "el numero es 1 entonces sale del break!!!!!!"
	 	break
	else 
		echo "el numero no es 1, sino que es $i"
	fi
done

#ejemplo de continue
num=10
while [ $num -ne 2 ]
do
	echo "el numero es $num"
	((num--))

	if [ $num -eq 5 ];
	then
		echo "salio el numero 5!!"
		continue
	fi
	
	echo "se ejecuta porque no salio el 5"

done
