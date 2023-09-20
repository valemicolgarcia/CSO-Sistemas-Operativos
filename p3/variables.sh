#!/bin/bash

cat << EOF > coment.txt

TIPOS DE VARIABLES

- variables LOCALES

Las variables locales son las que se definen dentro de un bloque de código, función o script, y solo están disponibles dentro de ese bloque, función o script en el que se declaran. No son accesibles fuera del ámbito donde se crearon.

- variables DE ENTORNO

Las variables de entorno son variables que están disponibles globalmente para cualquier proceso en el shell. Son utilizadas para definir información que programas y aplicaciones pueden necesitar, como rutas a directorios específicos o configuraciones específicas del sistema.
Por ejemplo, PATH es una variable de entorno que indica al sistema dónde buscar archivos ejecutables.
Las variables de entorno se definen utilizando la instrucción export

- variables DE POSICION

Las variables de posición son variables especiales utilizadas en shell scripting para referirse a los argumentos pasados a un script o función.

    $0: Representa el nombre del script.
    $1, $2, ... : Representan el primer, segundo, etc., argumento proporcionado al script.

Además, hay otras variables relacionadas:

    $#: Indica el número total de argumentos pasados al script.
    $*: Representa todos los argumentos pasados al script.
    $@: Similar a $*, pero se utiliza cuando se quieren preservar las comillas individuales en argumentos con espacios.

EOF

#variables locales
local_al_script=11
echo $local_al_script

funcion() {
local local_a_funcion=13
echo "La variable local a la funcion es $local_a_funcion "
}

funcion

echo "la variable local a la funcion es $local_a_funcion"
echo "no la imprime porque es LOCAL A FUNCION No al script"

#variables de entorno
export variable_de_entorno="variable nueva de entornooooo "
echo "la nueva variable de entorno creada es $variable_de_entorno"
#una vez exportada puede ser accedida por otros procesos o subshells

#variables de posicion
echo "el nombre del script es $0"
echo "primer argumento $1"
