#!/bin/bash
clear
now=$(date "+%A %d/%m/%Y")

opcion=1
desc=0.8
opcion2=1
num=1

#Productos
te=$(grep Té precios.txt | cut -d : -f 1)
cafe=$(grep Café precios.txt | cut -d : -f 1)
mate=$(grep Mate precios.txt | cut -d : -f 1)
tragos=$(grep Tragos precios.txt | cut -d : -f 1)
ref=$(grep Refrescos precios.txt | cut -d : -f 1)
san=$(grep Sánduche precios.txt | cut -d : -f 1)
pos=$(grep Postres precios.txt | cut -d : -f 1)

#Precios sin descuentos
precioTe=$(grep Té precios.txt | cut -d : -f 2)
precioCafe=$(grep 'Café' precios.txt | cut -d : -f 2)
precioMate=$(grep 'Mate' precios.txt | cut -d : -f 2)
precioTragos=$(grep 'Tragos' precios.txt | cut -d : -f 2)
precioRef=$(grep 'Refrescos' precios.txt | cut -d : -f 2)
precioSan=$(grep 'Sánduche' precios.txt | cut -d : -f 2)
precioPos=$(grep 'Postres' precios.txt | cut -d : -f 2)

#Precios con descuentos 
precioTeD=$(bc -l <<< $precioTe*$desc)
precioCafeD=$(bc -l <<< $precioCafe*$desc)
precioMateD=$(bc -l <<< $precioMate*$desc)
precioTragosD=$(bc -l <<< $precioTragos*$desc)
precioRefD=$(bc -l <<< $precioRef*$desc)
precioSanD=$(bc -l <<< $precioSan*$desc)
precioPosD=$(bc -l <<< $precioPos*$desc)


echo "Lista de Precios Nostalgia" > preciosNostalgia.txt
echo " " > preciosNostalgia.txt
echo "Té:$precioTeD" >> preciosNostalgia.txt
echo "Café:$precioCafeD" >> preciosNostalgia.txt
echo "Mate:$precioMateD" >> preciosNostalgia.txt
echo "Tragos:$precioTragosD" >> preciosNostalgia.txt
echo "Refrescos:$precioRefD" >> preciosNostalgia.txt
echo "Sánduche:$precioSanD" >> preciosNostalgia.txt
echo "Postres:$precioPosD" >> preciosNostalgia.txt


while [ $opcion -ne 0 ]; do
	
	echo "Bienvenido $USER a la Cafeteria - Hoy es: $now."
	echo "Menú:"
	echo " "
	echo "Ingrese la opción correspondiente:"
	echo "1 Ver precios de Promoción Nostalgia"
	echo "2 Facturación de Consumo (Promoción Nostalgia)"
	echo "0 para salir"
	echo " "

	read opcion
	echo " "	
	
	case $opcion in
		1)
			clear
			echo "Promoción Nostalgia"
			echo " "
			cat preciosNostalgia.txt
			echo " "
		;;
		2)	
			clear
			while [ $opcion2 -ne 0 ]; do
				
				echo " "
				echo "Ingrese los items consumidos para imprimir ticket."
				echo "1- Té"
				echo "2- Café"
				echo "3- Mate"
				echo "4- Tragos"
				echo "5- Refrescos"
				echo "6- Sánduche"
				echo "7- Postres"
				echo "8- Imprimir Ticket"
				echo "0- Salir"
				echo " "
				read opcion2
				echo " "
				total=0

				case $opcion2 in
					1)	
						$total=$(bc -l <<< $total+$precioTeD)
						echo "$te = $precioTeD" >> ticket+$num.txt
						echo "$te = $precioTeD"	
					;;
					2)
						$total=$(bc -l <<< $total+$precioCafeD)
						echo "$cafe = $precioCafeD" >> ticket+$num.txt
						echo "$cafe = $precioCafeD" 
					;;
					3)
						$total=$(bc -l <<< $total+$precioMateD)
						echo "$mate = $precioMateD" >> ticket+$num.txt
						echo "$mate = $precioMateD"
					;;
					4)
						$total=$(bc -l <<< $total+$precioTragosD)
						echo "$tragos = $precioTragosD" >> ticket+$num.txt
						echo "$tragos = $precioTragosD"
					;;
					5)
						$total=$(bc -l <<< $total+$precioRefD)
						echo "$ref = $precioRefD" >> ticket+$num.txt
						echo "$ref = $precioRefD"
					;;
					6)
						$total=$(bc -l <<< $total+$precioSacD)
						echo "$san = $precioSanD" >> ticket+$num.txt
						echo "$san = $precioSanD"
					;;
					7)
						$total=$(bc -l <<< $total+$precioPosD)
						echo "$pos = $precioPosD" >> ticket+$num.txt
						echo "$pos = $precioPosD"
					;;
					8)
						echo " "
						echo "Facturación de Consumo"
						echo " " >> ticket+$num.txt
						echo "Total: $total" >> ticket+$num.txt
						echo " " >> ticket+$num.txt
						cat ticket+$num.txt
						num=$((num+1)
					;;					
					0)
						echo " "
						break
					;;
					*)
						echo "Opción Incorrecta."
					;;	
				esac
				
			done

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