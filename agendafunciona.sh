#!/bin/bash

echo -e "\033[1mOPCIONES:\033[0m \n\033[1m1.\033[0m Añadir registro \n\033[1m2.\033[0m Buscar registro \n\033[1m3.\033[0m Listar registro \n\033[1m4.\033[0m Ordenar registro \n\033[1m5.\033[0m Borrar registro \n\033[1m6.\033[0m Cerrar agenda" #aquí mostramos las opciones
read -p "Introduce una opción: " opcion #aquí leemos la opcion que introduce

while [ true ] #aquí decimos que mientras el programa esté en ejecucion, haga lo siguiente dependiendo de la opcion que introducimos
do		
	
	if [ $opcion -eq 0 -o $opcion -gt 6 ] #aquí decimos que si la opcion es 0 o mayor que 6, que ejecute lo siguiente
	then
		echo -e "\033[1mLa opción introducida es incorrecta.\033[0m" #aquí decimos que si la opcion es incorrecta
		read -p "Introduce una opción (para ver todas las opciones, pulsa 7): " opcion #aquí preguntamos con que opcion quiere continuar
	fi

	if [ $opcion -eq 1 ] #aquí decimos que si la opcion es 1, que ejecute lo siguiente
	then
		read -p "Nombre -> " nombre #aquí almacenamos el nombre en la variable $nombre
		read -p "Dirección -> " direccion #aquí almacenamos la direccion en la variable $direccion
		read -p "Teléfono -> " telefono #aquí almacenamos el telefono en la variable $telefono
		echo -e "Nombre -> $nombre \t\t\tDirección -> $direccion \t\t\tTeléfono -> $telefono \t">>lista.txt #aquí almacenamos los datos introducidos en lista.txt
		echo -e "\033[1mDatos guardados correctamente en la agenda.\033[0m" #aquí decimos que los datos se han guardado
		read -p "Introduce una opción (para ver todas las opciones, pulsa 7): " opcion
	fi

	if [ $opcion -eq 2 ] #aquí decimos que si la opcion es 2, que ejecute lo siguiente
	then
		read -p "Introduce el nombre, dirección o teléfono para buscar: " buscar #aquí preguntamos lo que quiere buscar y lo asignamos la variable $buscar
		grep 	"$buscar" lista.txt #aquí decimos que muestre lo que hemos introducido en $buscar que esté en lista.txt 
		read -p "Introduce una opción (para ver todas las opciones, pulsa 7): " opcion
	fi

	if [ $opcion -eq 3 ] #aquí decimos que si la opcion es 3, que ejecute lo siguiente
	then
		cat lista.txt #aquí listamos la lista
		read -p "Introduce una opción (para ver todas las opciones, pulsa 7): " opcion	
	fi

	if [ $opcion -eq 4 ] #aquí decimos que si la opcion es 4, que ejecute lo siguiente
	then
		sort lista.txt #aquí ordenamos la lista en orden ascendente
		read -p "Introduce una opción (para ver todas las opciones, pulsa 7): " opcion	
	fi

	if [ $opcion -eq 5 ] #aquí decimos que si la opcion es 5, que ejecute lo siguiente
	then
		echo -e "\033[3mBorrando agenda...\033[0m" #aquí mostramos que se está borrando la agenda
		echo -e "\033[1mAgenda borrada con éxito.\033[0m" #aquí decimos que la agenda se ha borrado
		rm lista.txt
		read -p "Introduce una opción (para ver todas las opciones, pulsa 7): " opcion
	fi
	
	if [ $opcion -eq 6 ] #aquí decimos que si la opcion es 6, que ejecute lo siguiente
	then		
		break #aquí decimos que cierre el programa
	fi
	
	if [ $opcion -eq 7 ] #aquí decimos que si la opcion es 7, que ejecute lo siguiente
	then		
		echo -e "\033[1mOPCIONES:\033[0m \n\033[1m1.\033[0m Añadir registro \n\033[1m2.\033[0m Buscar registro \n\033[1m3.\033[0m Listar registro \n\033[1m4.\033[0m Ordenar registro \n\033[1m5.\033[0m Borrar registro \n\033[1m6.\033[0m Cerrar agenda" #aquí mostramos las opciones
		read -p "Introduce una opción: " opcion #aquí leemos la opcion que introduce
	fi
done
