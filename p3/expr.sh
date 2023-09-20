#!/bin/bash

#expr es un comando para evaluar las expresiones
#sintaxis--> expr argumento1 op argumento2

A=10
B=5
suma=$(expr $A + $B)
multi=$(expr $A '*' $B) #debe ser encerrado entre '' para ser interpretado por la shell
echo "La suma es: $suma "
echo "La multi es $multi"
boolean=$(expr $A = $B)
echo "Son iguales?, resultado: $boolean "


#cadena="valeria" no me anduvo
#longitud=$(expr lenght "valeria") 
#echo $longitud


cat <<EOF > comentario.txt 
Asi se redirige la salida del eof a un archivo para que no salga x consola 

Tipo de operaciones que se pueden utilizar:

    Operaciones Aritméticas:
        + : Adición
        - : Sustracción
        * : Multiplicación (Nota: el asterisco debe ser escapado \* o encerrado entre comillas '*' para evitar que sea interpretado por el shell)
        / : División
        % : Módulo (resto de la división)

    Operaciones Relacionales (devuelven 1 para verdadero y 0 para falso):
        = : Igualdad
        != : Desigualdad
        > : Mayor que
        >= : Mayor o igual que
        < : Menor que
        <= : Menor o igual que
        
          Operaciones de Cadena:
        : : Devuelve la longitud de la cadena

EOF


  
