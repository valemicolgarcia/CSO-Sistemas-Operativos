#!/bin/bash

cat << EOF > coment.txt

22. Dada la siguiente declaración al comienzo de un script: 
num=(10 3 5 7 9 3 5 4) (la cantidad de elementos del arreglo puede variar). Implemente la función productoria dentro de este script, cuya tarea sea multiplicar todos los números del arreglo

EOF


productoria(){
	tamanio=${#num[@]}
	total=1
	for ((i=0; i<${tamanio}; i++ ));
	do
	#total=$(( total * ${num[i]} ))
	total=$( expr $total '*' ${num[i]} )
	done
	echo "La prodcutoria entre todos es $total"
}

num=(10 3 5 7 9 3 5 4) #arreglo
productoria


