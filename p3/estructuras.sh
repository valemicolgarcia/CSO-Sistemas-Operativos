#!/bin/bash
#estructuras de control
cat << EOF > coment.txt

if [ condition ]; then
else
fi

while [ condition ]
do
done

select variable in list of variables
do
done

for (( i=0; i<5; i++ ))
do
done

case $variable in
"1") 
;;
*)
;;
esac


EOF


#estructura IF
if [ 5 -gt 10 ]; then
	echo "entro al if"
else
	echo "entro al else"
fi

#estructura case
nombre="valeria"
case $nombre in
"martina") 
	echo "el nombre es martina"
;;
"valeria")
	echo "el nombre es valeria"
;;
"milena")
	echo "el nombre es milena"
;;
esac

#estructura select con case
select postre in helado flan torta chocolate
do
	case $postre in
	"helado") 
		echo "seamos amigos"
		;;
	"chocolate")
		echo "me caes bien"
		;;
	"flan")
		echo "no somos compatibles"
		;;
	"torta")
		echo "va de merienda"
		;;
	*)
		echo "deja no me hables"
		break
		;;
	esac

done

#select con if
select clima in soleado nublado lluvia
do
	if [ "$clima" == soleado ]; then
		echo "a tomar sol"
	else
		echo "esta para una siesta"
		break
	fi
	
done

#while
num=1
while [ $num -lt 5 ]
do
	echo "El numero es $num"
	((num++))
done

echo "ya sali del while con el numero $num"
echo " "

#for 
encadenamiento=0
suma=0
for (( i=1; i<5; i++ ))
do
	encadenamiento+=5
	echo "si uso +=5 me concatena, entonces queda  $encadenamiento"
	suma=$(expr $suma + 5)
	echo "si uso expr me suma, entonces queda $suma"
done


echo " "
echo "ya sali del while, la suma es $suma"




