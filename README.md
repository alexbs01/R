# R

## Qué es?

R es un lenguaje de programación orientado a objetos que se puede utilizar para el análisis de datos, y nos permite realizar análisis estadísticos y gráficos.  

-----

## Cosas a recordar

- R *trabaja por defecto en doble precisión* (15 o 16 decimales), pero normalmente solo muestra 6 decimales.  
- Los comentarios en R se hacen con el caracter de **#**.  
- *Distingue* entre mayúsculas y minúsculas.  
- Tiene valores especiales: **NA** (No disponible), **NaN** (No es un número) o **Inf** (Infinito).

## Operadores

| Operadores aritmético | Significado     | Operadores relacionales |  Significado  | Operadores lógicos |          Significado |
| :-------------------- | :-------------- | :---------------------: | :-----------: | -----------------: | -------------------: |
| +                     | Suma            |            <            |     Menor     |                 !a |                 No a |
| -                     | Resta           |           <=            | Menor o igual |       a AND b, a&b |                a Y b |
| \*                    | Multiplicación  |            >            |     Mayor     |       a OR b, a\|b |                a O b |
| /                     | División        |           >=            | Mayor o igual |           XOR(a,b) | O exclusivo de a o b |
| ^                     | Potencia        |           ==            |   Idéntico    |            TRUE, T |            Verdadero |
| %%                    | Módulo          |           !=            |   Distinto    |           FALSE, F |                Falso |
| %/%                   | División entera |                         |               |                    |                      |

> Existe un operador de asignación que es muy útil para crear variables o funciones, este operador es **<-** .  

Por ejemplo:  

```R
x <- 7 # Se crea la variable x y se le asigna el valor 7
y <- 6
z <- x^y # Se crea una variable z que hace la potencia de los anteriores valores
z # Muestra el resultado alamacenado en la variable z
# El resultado sera de esta operacion será: 117649
```

-----

## Funciones internas

Existe una gran cantidad de funciones internas que nos permiten utilizar realizar trabajos de una forma más corta.  

- **q()**: Para salir del programa.  
- **ls()**: Lista todas las variables que hay guardas en memoria en ese momento.  
- **rm(\<x>)**: Borra las variables que pongan como argumentos, si ponemos ```rm(list=ls())``` borraremos todas las variables.  
- **dir()**: Muestra los directorios que hay en la ubicación en la que se abrió R.  
- **library()**: Muestra los paquetes que hay disponibles para instalar.  
- **getwd()**: Muestra la ubicación actual, igual que al ```ls``` de Linux.  
- **help(\<x>)**: Da la ayuda para el comando que se ponga en como argumento.  
- **demo(\<x>)**: Realiza una demostración de lo que pongas como argumento.  

-----

## Funciones

R también nos da la posibilidad de crear nosotros mismos funciones nuevas para realizar operaciones más específicas.  

Su sintaxis es la siguiente:  

```R
nombre <- function(parametros) {
	comandos # Las variables de la funcion se asignan con =
	return(objeto de salida)
}
```

-----

## Bucles

```R
for (<indice> in <rango>) {<comandos>}  

while (<condicion>) {<comandos>}   

repeat {<comandos>} repite los comandos sin fin.  
```

Estos bucles se pueden combinar con las órdenes ```break``` (salir del bucle) y ```next``` (volver al principio del bucle).

----

## Condicionales

Al igual que en otros lenguajes de programación, existen sentencias condicionales que tienen esta forma.  

```R
if (<condicion>) {
	<comandos>
} else {
	<comandos>
}
```

-----

## Primeras fórmulas de estadística

- **min(\<vector>)**: Busca el mínimo de la muestra.  
- **max(\<vector>)**: Busca el máximo de la muestra.
- **length(\<vector>)**: Dice cuantos elementos tiene el vector.
- **sum(\<vector>)**: Suma todos los elementos de la muestra.
- **prod(\<vector>)**: Hace el producto de todos los elementos del vector.
- **sort(\<vector>)**: Ordena todos los elementos del vector.  
- **mean(\<vector>)**: Hace la media aritmética de los elementos del vector que se seleccione.
- **sd(\<vector>)**: Haya la desviación estándar de la muestra (standar deviation).  
- **var(\<vector>)**: Calcula la **cuasi-varianza** de la muestra.  
- **summary(\<vector>)**: Muestra un resumen de la muestra. Este resumen está formado por valor mínimo y máximo, media y mediana y primer y tercer cuartil.  

```R
# Ejercicio de media
a <- c(5,6,8,9,6,6,6,6,9,8,7,6,5,6,4,2,2,1,4,9,8,9,8,9) # El comando c se utiliza para crear un vector

media <- function(vector) { # Esta funcion hace la media aritmetica de un vector
  longitud <- length(vector)
  suma <- sum(vector)
  resultado <- suma/longitud
  return(resultado)
}

media(a) # Se realiza la media del vector a utilizando la funcion de arriba
```

-----

## Data frame

El data frame es una estructura de datos en forma de tabla en la que cada columna representa una variable y cada fila a un individuo. En R existe el comando ```iris```, que muestra una tabla de 150 filas de un estudio realizado a un conjunto de flores de iris.  

- names(\<tabla>): Nos permite ver el nombre de las columnas de la tabla.  
- \<tabla>$\<columna>: Muestra los datos de esa columna.  
- str(\<tabla>): Muestra un resumen de todas las columnas de la tabla.  

## Funciones útiles de R

- **sample()**: Poniendo como parámetro un vector, lo reordenará al azar. Y si le pasamos un número como segundo parámetro, podremos escoger cuantos números queremos que nos muestre.  

  ```r
  x<-seq(21, 87, lenght=15) # El parámetor length segmenta la secuencia en 15 fragmentos de la misma longitud
  
  sample(x, 1) # Output: 35.14286
  sample(x, 1) # Output: 44.57143
  sample(x, 1) # Output: 63.42857 77.57143 82.28571
  # Todos estos valores pertenecen a la secuencie x
  ```

  
