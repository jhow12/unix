#!/bin/bash
#Para sacar el número de filas
echo  filas >> $2
#Se utiliza echo para introducir el texto con el fin de dierenciar el N° de fila y el N° de columna
for file in *.txt; do cat $file | wc -l $file; done >> $2
#Se utiliza el bucle for para repetir el comando  para todos los archivos .txt del Directorio Saavedra2013
#Se utilida "do"´para indicar el comienzo de los comandos
#Se utiliza "cat" para imprimir el contenidos de los archivos
#al finalizar cada comando se introduce la palabra "$file"
 #Se usa "wc -l"para contar las lineas
#Diferenciar las filas y las columnas 
echo columnas >> $2
#Se utiliza echo para introducir el texto con el fin de dierenciar el N° de fila y el N° de columna
for file in *.txt; do head -n1 $file  | grep -o " " | wc -l ; done >> $2
#Se utiliza el bucle for para repetir el comando  para todos los archivos .txt del Directorio Saavedra2013
#Se usa "head -n1" para tomar la primera fila de los archivos .txt
#Se usa "grep -o " " para contar los espacios 
#Se usa "wc -l"para contar las lineas 
 
