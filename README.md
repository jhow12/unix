# Ejercicio 1.10.3, Solucion para los literales a y b (de Saavedra and Stouffer, 2013) # 
---
Desde Git Bash nos dirigimos hacia el directorio donde se encuentra la carpeta de *unix*

*1.Para la solucion de ambos literales necesitamos crear un archivo del tipo .sh*

*(Esto repetimos 2 veces ya que necesitamos dos archivos.sh (archivos.sh y archivos_all.sh) para la solucion de los dos literales)*

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
 
 * Para confirmar que es un archivo.sh prsionamos 
 
 
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
$ bash "nombredelarchivo.sh" "nombredelacarpetadata" "nombredelacarpetaparalosresultados"
```
* - Resultados



  

  
 
