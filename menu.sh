#!/bin/bash

now=$(date "+%A %d/%m/%Y")
echo "Bienvenido $USER - Hoy es: $now."
echo "Menú:"
echo ""      
echo "Ingrese la opción corespondiente:"
echo "1 para sumar 2 números"
echo "2 para evaluar que valos es menor"
echo "3 para ingresar dos números"
echo "0 para salir"

read opcion
case $opcion in

			1)echo "Función de suma."
			echo "Ingrese uno de los números a sumar: "
			read num1
			echo "Ingrese otro número a sumar: "
			read num2
			suma=num1+num2
			echo ""
			echo "El resultado de $num1 + $num2 es $suma"
			;;
			2) echo "Comara cual número es menor
			echo "Ingrese el primer número: "
			read num1
			echo "Ingrese el segundo número: "
			read num2

			if $num1 -lt $num2
			then
			  echo "$num1 es menor a $num2" 
			[elif $num1 -gt $num2
			then
			  echo "$num1 no es menor a $num2"]
			[else
			  "$num1 y $num2 tienen el mismo valor"]
			fi
			;;
			3) echo "Ingresar 2 números"
			echo "Ingrese 1 número"
			read num1
			echo "Ingrese otro número"
			read num2

			echo "Los núemeros ingresados son: $num1 y $num2"
			;;
			0) echo "Hasta luego!"
			sleep 2
			;;
			*) echo "opción incorrecta"
			sleep 3
			;;
esac
sleep