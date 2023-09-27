#!/bin/bash
#PREPARCIAL
cat << EOF > coment.txt


EOF

if [ $# -ne 1 ]; then
echo "Ingresar usuario"
exit 1
fi

existe=$( cat /etc/passwd | cut -d : -f 1 | grep -w $1 | wc -l)

if [ $existe -eq 0 ];then
echo "no existe el user"
exit 2
else
echo "existeeeeeeeeeeee"
fi

while true; do
logueado=$(users | grep -wc $1)

if [ $logueado -gt 0 ]; then
echo "Usuario logueado"
exit
fi

sleep 10
done



