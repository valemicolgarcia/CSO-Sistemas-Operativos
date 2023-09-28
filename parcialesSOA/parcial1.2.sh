#!/bin/bash
#parcial 1 punto 2 :)
#es el del redictado

cat << EOF > coment.txt

Almacene en un arreglo los nombres de todos los usuarios del sistema que tengan un patron, que se recibe como parametro del script, en su nombre de usuario

Una vez almacenados debera presentar al usuario un menu que le permita realizar las siguientes operaciones sobre la lista obtenida:

listar: lista en la salida estandar, de a uno x linea, los nombres de usuario que se encuentran actualmente en el arreglo

eliminar: presenta la lista de usuarios con sus indices y luego le pide al usuario que indique el indice del elemento que se desee eliminar del arreglo

contar: presenta en la salida estandar la cantidad de elementos que actualmente tiene el arreglo

NOTA: las operaciones deben implementarse como funciones que realicen las operaciones sobre el arreglo, validando los parametos que recibe cuando fuera posible


EOF

#FUNCIONES
listar(){
for user in ${usuarios[@]}; do #FOREACH
echo "$user"
done
}

eliminar(){

#listo los usuarios con sus indices
for (( i=0; i< ${#usuarios[*]}; i++ )); do
	echo "INDICE: $i - ELEMENTO: ${usuarios[i]} "
done
echo "Que elemento desea eliminar del arreglo? - ingrese un indice"
read indice

unset usuarios[$indice]
echo "Se borro el usuario pedido"
usuarios=(${usuarios[*]}) #para que desaparezcan los espacios vacios

}

contar(){
echo "El arreglo actualmente tiene ${#usuarios[*]} elementos"
}


#------------------------------------MAIN-------------------------------------

#verificacion de parametros
if [ $# -ne 1 ]; then
echo "Se debe recibir exactamente un parametro "
exit 1
fi

#cat /etc/passwd (muestra el contenido del archivo /etc/passwd que tiene info de usuarios)
#cut delimita con : y busca la primer columna
#grep busca el patron pasado como parametro

usuarios=($(cat /etc/passwd | cut -d":" -f1 | grep $1))
echo "$usuarios" #imprimo array



#MENU DE OPCIONES
select operacion in listar eliminar contar finalizar; do

	case $operacion in
	"listar")
	listar
	;;
	"eliminar")
	eliminar
	;;
	"contar")
	contar
	;;
	"finalizar")
	break
	;;
	*)
	echo "La operacion elegida no es valida"
	;;
	esac


done


