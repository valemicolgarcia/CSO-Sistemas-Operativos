#!/bin/bash
#funciones

#¿Pueden definirse funciones dentro de un script? ¿Cómo? ¿Cómo se maneja el pasaje de parámetros de una función a la otra?

funcion (){
echo "hola soy vale"
}

funcion #invocacion

funcion_con_parametros() {
echo "El primer parametro es $1 y el segundo es $2" 
}

funcion_con_parametros 1 2 #invocacion

funcion_retorno(){
return 13
}

funcion_retorno
echo "El exit status de la funcion es $? " 
