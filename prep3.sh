#!/bin/bash
#PREPARCIAL
cat << EOF > coment.txt
el arreglo 2 lo meto adentro del 1

bash -x para debug
EOF
function iniciar(){ 
vector=(`seq  1 10`)

echo "iniciado"

}


longitud(){
echo "La longitud es ${#vector[@]}"
}

elementos(){
echo "Los elementos son: ${vector[@]}"
}


iniciar 
echo ${vector[@]}
longitud
elementos

select opcion in iniciar longitud elementos exit
case $opcion in
"iniciar")
iniciar
;;

