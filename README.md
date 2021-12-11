# Ejercicio 1.10.3, Solucion para los literales a y b (de Saavedra and Stouffer, 2013) # 
---
Desde Git Bash nos dirigimos hacia el directorio donde se encuentra la carpeta de *data*

*1.Para la solucion de ambos literales necesitamos crear un archivo del tipo .sh*

*(Esto repetimos 2 veces ya que necesitamos dos archivos.sh (archivos.sh y archivos_all.sh) para la solucion de los dos literales)*

*(El archivo.sh se situara en el directorio data y el archivo_all.sh se encontrara en el directorio Saavedra2013)

* **PARA CREAR EL ARCHIVO**
 
``` js
$ touch "nombredelarchivo.sh" 
```

* **CAMBIO DE PERMISOS DE EJECUCION**

``` js
 $ chmod +rx "nombredelarchivo.sh"
```

* **ABRIMOS Shell UTILIZANDO**

``` js
  $ nano "nombredelarchivo"
 ```
 - en la ventana de Shell escribiremos el siguiente texto
   
   ``` js
   #!/bin/bash
    ```
 *Salimos de Shell presionando: **ctrl+x, Y,** y **enter***
 
 * Para confirmar que es un archivo.sh presionamos 
 
 
 ``` js
 $ ls -lh "nombredelarchivo.sh"

 ``` 

lo que nos dara como resultado


 ``` js
  -rwxr-xr-x 
 ```
 
 **Para el literal a)**
 
 *Abrimos el shell del archivo.sh
 
 ``` js
 $nano "archivo.sh"
 ```
  
  * *Una vez abierto el **Shell** colocamos los siguientes comandos*
  
  ``` js
echo "filas n11.txt" >> $2 
cat $1| wc -l  >> $2
echo "columnas n11.txt" >> $2 
head -n1 $1 | grep -o " " |  wc -l >> $2
 ```
  
  * *Cerramos **Shell** y en la ventana de Git Bash especificamos los archivos a utilizar*
  
``` js
$ bash "nombredelarchivo.sh" "Saavedra2013/n11.txt" "nombredelacarpetaparalosresultados"
```
* Ejecutamos el bash
``` js
$ ./"nombredelarchivo.sh" "Saavedra2013/n11.txt" "nombredelacarpetaparalosresultados"
```
Para visualizar los resultados obtenidos
``` js
$ cat "nombredelacarpetaparalosresultados"
```

 
* - Resultados

![image](https://user-images.githubusercontent.com/95323235/145662439-7c6891b6-5fbc-4db2-aaa8-2ff14463fbaa.png)

 **Para el literal b)**
 nos movemos al Directorio Saavedra2013
 ``` js
 $ cd ../unix/data/Saavedra2013
 ```
 
  *Abrimos el shell del archivo_all.sh
 
 ``` js
 $nano "archivos_all.sh"
 ```
  
  * *Una vez abierto el **Shell** colocamos los siguientes comandos*
  
  ``` js
echo  filas >> $2
for file in *.txt; do cat $file | wc -l $file; done >> $2
echo columnas >> $2
for file in *.txt; do head -n1 $file  | grep -o " " $file| wc -l $file; done >> $2

 ```
  
  * *Cerramos **Shell** y en la ventana de Git Bash especificamos los archivos a utilizar*
  
``` js
$ bash "nombredelarchivo.sh" "Saavedra2013" "nombredelacarpetaparalosresultados"
```
* Ejecutamos el bash
``` js
$ ./"nombredelarchivo.sh" "Saavedra2013/n11.txt" "nombredelacarpetaparalosresultados"
```
Para visualizar los resultados obtenidos
``` js
$ cat "nombredelacarpetaparalosresultados"

* - Resultados


 
 



  

  
 
