#!/bin/bash
read -p "Día de la semana: " opcion

while [ true ]
do
	if [ $opcion = lunes ]
	then
		clear
		echo -e "\n\n\e[1m-------------LUNES-------------\e[0m \n\n\tFH \n\tGBD \n\tGBD \n\n\t\e[1mRECREO\e[0m \n\n\tISO \n\tIN \n\tIN \n\n\e[1m-------------------------------\e[0m\n"
		read -p "Introduce otro día o exit para salir: " opcion
	fi

	if [ $opcion = martes ]
	then
		clear
		echo -e "\n\n\e[1m-------------MARTES-------------\e[0m \n\n\tFOL \n\tFOL \n\tISO \n\n\t\e[1mRECREO\e[0m \n\n\tISO \n\tLM \n\tLM \n\n\e[1m--------------------------------\e[0m\n"
		read -p "Introduce otro día o exit para salir: " opcion
	fi

	if [ $opcion = miercoles ]
	then
		clear
		echo -e "\n\n\e[1m----------MIÉRCOLES----------\e[0m \n\n\tFH \n\tFH \n\tISO \n\n\t\e[1mRECREO\e[0m \n\n\tGBD \n\tGBD \n\tGBD \n\n\e[1m-----------------------------\e[0m\n"
		read -p "Introduce otro día o exit para salir: " opcion
	fi

	if [ $opcion = jueves ]
	then
		clear
		echo -e "\n\n\e[1m-----------JUEVES-----------\e[0m \n\n\tISO \n\tISO \n\tISO \n\n\t\e[1mRECREO\e[0m \n\n\tPAR \n\tPAR \n\tPAR \n\n\e[1m----------------------------\e[0m\n"
		read -p "Introduce otro día o exit para salir: " opcion
	fi

	if [ $opcion = viernes ]
	then
		clear
		echo -e "\n\n\e[1m-----------VIERNES-----------\e[0m \n\n\tIN \n\tFOL \n\tPAR \n\n\t\e[1mRECREO\e[0m \n\n\tPAR \n\tLM \n\tLM \n\n\e[1m-----------------------------\e[0m\n"
		read -p "Introduce otro día o exit para salir: " opcion
	fi
		
	if [ $opcion = exit ]
	then
		exit
	fi

	if [ $opcion = salir ]
	then
		exit
	fi
done
