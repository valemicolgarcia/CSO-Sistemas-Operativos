#!/bin/bash

cat << EOF > coment.txt

Realice un script que mueva todos los programas del directorio actual (archivos ejecutables) hacia el subdirectorio “bin” del directorio HOME del usuario actualmente logueado. El script debe imprimir en pantalla los nombres de los que mueve, e indicar cuántos ha movido, o que no ha movido ninguno. Si el directorio “bin” no existe,deberá ser creado.

EOF

home_direc=$HOME
bin_direc=$home/bin

#Verifico si el directorio bin existe y sino lo creo
if [ ! -d $bin_direc ]; then
  mkdir -p $bin_direc
fi

cant=0
#Itero
for archivo in *; do
  if [ -x $archivo ] && [ -f $archivo ]; then
    sudo mv $archivo $bin_direc #le puse el sudo porque no tenia permisos
    ((cant++))
    echo "Moviendo $archivo"
  fi
done


#Imprimo resultados
if [ $cant == 0 ]; then
  echo "No se movieron archivos"
else
  echo "Se movieron $cant archivos a $bin_direc"
fi
