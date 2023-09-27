#!/bin/bash
#PREPARCIAL
cat << EOF > coment.txt

- se deben validar los parametros
- paso parametros y no se la cantidad $#
- todos los elementos que me pasaron $*, lo itero con 
- el ; te deja escribir en una sola linea
- el exit tiene que estar siempre, exit 1 o 2 dependen de los errrores
- users / who (who te da mas info pero users es mas comodo)
- 


if [ $# -ne 1 ]; then
echo " se debe pasar 1 argumento"
exit 1
fi
EOF
if [ $# -ne 3 ]; then
echo "Faltan parametros"
exit 1
fi

if [ ! -d $1 ]; then
echo "NO es un directorio"
exit 2
fi


directorio=$1
case $2 in
"-a") 
	for i in 'ls $1'; do
	echo "IMPRIMO EL iiiiiii $i"
	mv $1/$i $1/$i$3
	done
;;
#"-b")
#;;
*)
echo "El segundo parametro no es valido"
exit 3
;;
esac



