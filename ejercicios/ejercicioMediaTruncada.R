# Ejercicio de la media truncada

# La media truncada es la media que se realiza cuando existen elemenetos
# de la muestra que sobresalen por ser muy superiores o inferiores
# a lo normal, este tipo de media elimina estos picos que pueden variar
# mucho la media

# Con esta función se realiza la media eliminando los elementos que sobreapasan
# Por defecto el 20% de los datos se eliminaran el por arriba y por abajo 
mediaTruncada <- function(x, p=0.2) { 
  longitud <- length(x)
  cantidadNumerosEliminar <- round(p*longitud)
  
  if((cantidadNumerosEliminar<0)|(cantidadNumerosEliminar>=(longitud/2))) stop('Valor de p incorrecto')
 
  x <- sort(x) # Se ordena el vector de entrada
  y <- x[(cantidadNumerosEliminar+1):(longitud-cantidadNumerosEliminar)] 
  # Crea un vector descontando los primeros elementeos y terminando los ultimos
  # correspondiendose con el p% de la cantidad total de elementos
  
  return(mean(y))
}
x <- (1:11)^2
mediaTruncada(x)
