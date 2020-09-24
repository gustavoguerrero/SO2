#!/bin/bash

uno=$(grep Paola agenda.txt)
dos=$(cut agenda.txt -d : -f 3)
tres=$(tail -n 2 agenda.txt)
nombre=$(cut agenda.txt -d : -f 1)
apellido=$(cut agenda.txt -d : -f 2)
echo "1)- $uno"
echo "2)- $dos"
echo "3)- $tres"
echo "4)- $nombre $apellido"

