#!/bin/bash

while [ true ]
do 
#Solicita al usuario que ingrese un número
	read -p "Ingrese un número (o escribe salir para cerrar): " numero

#Si el salor es salir, cierra el script
	if [ $numero = salir ]
		then
		exit
	fi	

#Valida si el número ingresado es válido
	if ! [[ "$numero" =~ ^[0-9]+$ ]]; then
		echo "Error: Por favor, ingresa un número entero válido."
		read -p "Ingrese un número (o escribe salir para cerrar): " numero
	fi
	
	

#Mostra los 10 primeros múltiplos del número ingresado
	echo "Los 10 primeros múltiplos de $numero son:"
	for ((i=1; i<=10; i++)); do
		resultado=$((numero * i))
		echo "$numero x $i = $resultado"
	done

done
