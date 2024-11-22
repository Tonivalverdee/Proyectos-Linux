.#!/bin/bash

clear

while [ true ]

echo -e "1--->Sumar \n\n2--->Restar \n\n3--->Multiplicar \n\n4--->Dividir\n"
read -p "Elije una de estas opciones: " opcion

do

if [ $opcion -eq 1 ]
then
	clear
	read -p "Primer dígito que quieras sumar: " suma1
	read -p "Segundo dígito que quieras sumar: " suma2
	totalsuma=`expr $suma1 + $suma2`
	echo "El resultado de la suma es: $totalsuma"
	sleep 2
	clear
	echo -e "5--->Sí \n\n6--->No"
	read -p "¿Deseas seguir realizando cáculos?: " opcion
fi

if [ $opcion -eq 2 ]
then
	clear
	read -p "Primer dígito que quieras restar: " resta1
	read -p "Segundo dígito que quieras restar: " resta2
	totalresta=`expr $resta1 - $resta2`
	echo "El resultado de la resta es: $totalresta"
	sleep 2
	clear
	echo -e "5--->Sí \n\n6--->No"
	read -p "¿Deseas seguir realizando cáculos?: " opcion
fi

if [ $opcion -eq 3 ]
then
	clear
	read -p "Primer dígito que quieras multiplicar: " multiplicar1
	read -p "Segundo dígito que quieras multiplicar: " multiplicar2
	totalmultiplicacion=`expr $multiplicar1 \* $multiplicar2`
	echo "El resultado de la multiplicacion es: $totalmultiplicacion"
	sleep 2
	clear
	echo -e "5--->Sí \n\n6--->No"
	read -p "¿Deseas seguir realizando cáculos?: " opcion
fi

if [ $opcion -eq 4 ]
then
	clear
	read -p "Primer dígito que quieras dividir: " dividir1
	read -p "Segundo dígito que quieras dividir: " dividir2
	totaldividir=`expr $dividir1 / $dividir2`
	echo "El resultado de la división es: $totaldividir"
	sleep 2
	clear
	echo -e "5--->Sí \n\n6--->No"
	read -p "¿Deseas seguir realizando cáculos?: " opcion
fi

if [ $opcion -eq 5 ]
then
	clear
	echo -e "1--->Sumar \n\n2--->Restar \n\n3--->Multiplicar \n\n4--->Dividir\n"
       read -p "Elije una de estas opciones: " opcion
fi

if [ $opcion -eq 6 ]
then
	clear
	exit
fi

done
