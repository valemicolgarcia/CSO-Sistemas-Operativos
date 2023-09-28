#!/bin/bash

cat << EOF > coment.txt

Implemente un script que agregue a un arreglo todos los archivos del directorio /home cuya terminación sea .doc. Adicionalmente, implemente las siguientes funciones que le permitan acceder a la estructura creada:

verArchivo <nombre_de_archivo>: Imprime el archivo en pantalla si el mismo se
encuentra en el arreglo. Caso contrario imprime el mensaje de error “Archivo no en-
contrado” y devuelve como valor de retorno 5

cantidadArchivos: Imprime la cantidad de archivos del /home con terminación .doc

borrarArchivo <nombre_de_archivo>: Consulta al usuario si quiere eliminar el archi-
vo lógicamente. Si el usuario responde Si, elimina el elemento solo del arreglo. Si el
usuario responde No, elimina el archivo del arreglo y también del FileSystem. Debe
validar que el archivo exista en el arreglo. En caso de no existir, imprime el mensaje
de error “Archivo no encontrado” y devuelve como valor de retorno 10


if [ -d $arch ];then #los agrego al arreglo si son archivos
		echo "agreggo elementos"
		arreglo+=$arch
EOF



verArchivo(){

archivo=$1
encontre=false
for i in ${arreglo[*]}; do
	echo "Recorro elemento en la posicion $i "
	if [ $i == $1 ]; then
	echo " se encontro el elemento en el arreglo " 
	encontre=true
	break
	fi
done

if [ $encontre == "false" ]; then
		echo "Archivo no encontrado"
	fi	
	
}

cant_archivos(){
echo "La cantidad de archivos del arreglo es ${#arreglo[*]}"
}

borrar_archivos(){

echo "Desea eliminar el archivo $1 ???"
echo "Responde SI/NO"
read respuesta
encontre=false

if [ $respuesta == "SI" ]; then 

	for i in ${arreglo[@]};do
		if [ $i == $1 ]; then
		echo " se encontro el elemento en el arreglo " 
		encontre=true
		unset arreglo[$i]
		echo "archivo eliminado del arreglo"
		fi
	done
	
elif  [ $respuesta == "NO" ]; then

	for i in ${arreglo[@]};do
		if [ $i == $1 ]; then
		echo " se encontro el elemento en el arreglo " 
		encontre=true
		unset arreglo[$i]
		echo "archivo eliminado del arreglo"
		rm -f "${arreglo[i]}"
		echo "archivo eliminado del fylesystem"
		fi
	done	
	
else 
	echo "respuesta no valida, no se elimino el archivo"

fi


if [ $encontre == false ]; then
	echo "Archivo no encontrado"
	exit 10 
fi

}



#DECLARACION DE FUNCIONES------------------------


arreglo=() #creo arreglo vacio
#for arch in /home/valedebian/*.doc; do
for arch in $(find ./p3 -type f -name "*.doc" ); do #busco en /home archivos que terminen en doc
	echo "hol"
	arreglo+=("$arch")
done


echo "Imprimo el arreglo"
echo "${arreglo[@]}"
echo "${#arreglo[@]}"
echo "------"

verArchivo ./chau/chau.doc./chau/hola.doc #se encuentraaaaa
echo "---------"
verArchivo holi
echo "---------"


cant_archivos


