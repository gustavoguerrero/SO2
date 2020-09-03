#!/bin/bash

#echo "Bienvenido a la cafeteria"
#echo ""
#echo "Lista de precios"
#echo ""

#cat precios.txt

echo ""
echo "Promoción Noche de la Nostalgia"
echo ""
desc="0.8"

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
echo "Té:$precioTeD" >> preciosNostalgia.txt
echo "Café:$precioCafeD" >> preciosNostalgia.txt
echo "Mate:$precioMateD" >> preciosNostalgia.txt
echo "Tragos:$precioTragosD" >> preciosNostalgia.txt
echo "Refrescos:$precioRefD" >> preciosNostalgia.txt
echo "Sánduche:$precioSanD" >> preciosNostalgia.txt
echo "Postres:$precioPosD" >> preciosNostalgia.txt