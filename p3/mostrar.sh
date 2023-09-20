#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`" #Su usuario es: valedebian --> devuelve nombre de usuario
# las '' indican sustitucion de comandos. primero se ejecuta eso y despues se sustituira el comando con su salida
echo "Su directorio actual es:"



