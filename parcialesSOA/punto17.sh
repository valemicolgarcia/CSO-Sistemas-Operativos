#!/bin/bash

#-----------------FUNCIONES----------------------
existe(){

if [ $# -ne 1 ]; then
    echo "Debe recibir un parametro con nombre de usuario"
    return 2
fi

boolean=false

for user in ${usuarios[@]}; do
	if [ $user == $1 ]; then
	echo "El usuario existe"
	boolean=true
	return 0
	fi
done

if [ $boolean = "false" ]; then
	return 1;
fi
}

eliminarUsuario(){

if [ $# -ne 1 ]; then
    echo "Debe recibir un parametro con nombre de usuario"
    return 1
fi

encontre=false
for (( i=0 ; i< ${#usuarios[@]} ; i++)); do
	if [ $1 == ${usuarios[$i]} ]; then
	echo "El usuario existe en el arreglo"
	encontre=true
	break
	fi
done



if [ $encontre == "false" ]; then
echo "NO se encontro el usuario que se quiere eliminar"
return 2
fi

unset usuarios[$i] 
usuarios=(${usuarios[@]}) 

echo "Se elimino correctamente el usuario"

}

cantidad(){
echo "La cantidad total de usuarios del arreglo es ${#usuarios[@]}"
}

usuarios(){
echo "IMPRIMO NOMBRES DE USUARIO: "
for user in ${usuarios[@]}; do
echo "${user}"
done
}




#------------------MAIN---------------------

usuarios=($(cat /etc/passwd | cut -d":" -f1))
echo ${usuarios[@]}

existe valedebian
echo "RETORNO : $?"
existe vic
echo "RETORNO : $?"

cantidad

eliminarUsuario valedebian
echo ${usuarios[@]}

cantidad
usuarios

