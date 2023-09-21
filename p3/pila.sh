#!/bin/bash

cat << EOF > coment.txt

Realice un script que simule el comportamiento de una estructura de PILA e implemente las siguientes funciones aplicables sobre una estructura global definida en el script:
- push: Recibe un parámetro y lo agrega en la pila
- length: Devuelve la longitud de la pila
- pop: Saca un elemento de la pila
- print: Imprime todos elementos de la pila

Dentro del mismo script y utilizando las funciones implementadas:
- Agregue 10 elementos a la pila
- Saque 3 de ellos
- Imprima la longitud de la cola
- Luego imprima la totalidad de los elementos que en ella se encuentran.

EOF

pila=()  #modelo a la pila como un arreglo

push(){
elemento=$1
pila+=($elemento)

#pila[${#pila[@]}]=$1
}

pop(){
tamanio=${#pila[@]}
echo "El tamanio de la pila es $tamanio"
if [ $tamanio -gt 0 ];then
((tamanio--))
unset pila[$tamanio]
fi
}

lenght(){
longitud=${#pila[@]}
echo "La longitud de la pila es $longitud"
return $longitud
}

print(){
echo "${pila[@]}"
}

push hola
push como
push estas
push tengo
push sueno
push me
push duermo
push una
push siesta

print 

pop
pop
pop
pop

lenght

print




