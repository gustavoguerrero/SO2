#!/bin/bash

echo "Ingrese nombre"
read nombre
echo "Ingrese apellido"
read apellido
echo "Ingrese password"
read pass

nomTabla=$(cut -d : -f 1 usuarios.txt)
apeTabla=$(cut -d : -f 2 usuarios.txt)

for ( "$nombres" in "$nomTabla" -a "$apellidos" in "$apeTabla" )   ; do
	#falta resolver

	if [ "$nombre" in "$nombres" -a "$apellido" in "$apellidos" ]; then
		passTabla=$(grep $nombres usuarios.txt | cut -d : -f 3)
		if  [ "$pass" in "$passTabla" ]; then
			echo "La contraseña es correcta"
		else
			echo "La contraseña es incorrecta"
		fi

done

else
	echo "El nombre de usuario es incorrecto"
fi
