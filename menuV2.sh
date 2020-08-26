#!/bin/bash
opcion=1

while [ $opcion -ne 0 ]; do
	
	now=$(date "+%A %d/%m/%Y")
	echo "Bienvenido $USER - Hoy es: $now."
	echo "Menú:"
	echo " "
	echo "Ingrese la opción correspondiente:"
	echo "1 para sumar 2 números"
	echo "2 para evaluar cual número es menor"
	echo "3 para ingresar 2 números"
	echo "0 para salir"
	echo " "

	read opcion
	echo " "	
	
	case $opcion in
		1)
			echo "Función de suma"
			echo "Ingrese un número"
			read num1
			echo " "
			echo "Ingrese otro número"
			read num2
			echo " "
			resultado=$(expr $num1 + $num2)
			echo " "
			echo "El resultado de $num1 + $num2 es $resultado"
			echo " "
		;;
		2)
	
			echo "Comparar valor"
			echo "Ingrese un número"
			read num3
			echo " "
			echo "Ingrese un número"
			read num4
			echo " "
			if [ $num3 -lt $num4 ];
			then
				echo "$num3 es menor a $num4"
			elif [ $num3 -gt $num4 ];
			then 
			 	echo "$num3 es mayor a $num4"
			else
				echo "$num3 y $num4 tienen el mismo valor"
			fi
			echo " "	
		;;
		3)
		
			echo "Ingrese dos números"
			echo "Ingrese ún número"
			read num5
			echo " "
			echo "Ingrese otro número"
			read num6
			echo " "
			echo "Los números ingresados son: $num5 y $num6"
			echo " "
		;;
		0)
			echo "Hasta luego!!"
			echo " "
			exit
		;;
		*)
			echo "Opción incorrecta"
		esac
done