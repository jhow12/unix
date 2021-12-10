#!/bin/bash
#Para contar el numero de filas
echo "filas n11.txt" >> $2 
#Se utilizo echo para imprimir el texto y diferencia que archivo se  llamo
cat $1| wc -l  >> $2
#Se utilizo cat para llamar a los datos dentro del archivo .txt
#Se utilizo wc -l" para contar las lineas 
#Para contar el numero  columnas
echo "columnas n11.txt" >> $2 
#Se utilizo echo"para imprimir el texto y diferenciar que se van a contar las columnas
head -n1 $1 | grep -o " " |  wc -l >> $2
# Se utilizo head -n1 "para llamar a las primera linea del archivo. 
#Se utilizo "grep -o" para contar los espacios .
#Se utilizo "wc -l" paa contar el numero de filas 
