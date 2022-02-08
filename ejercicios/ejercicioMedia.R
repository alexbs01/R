# Ejercicio de media
a <- c(5,6,8,9,6,6,6,6,9,8,7,6,5,6,4,2,2,1,4,9,8,9,8,9)

media <- function(vector) {
  longitud <- length(vector)
  suma <- sum(vector)
  resultado <- suma/longitud
  return(resultado)
}

media(a)
