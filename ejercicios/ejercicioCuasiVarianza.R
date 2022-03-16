# Ejercicio cuasi-varianza

cuasiVar <- function(vector) {
    longitud <- length(vector)
    cuasiVarianza <- (sum(x^2)-longitud*mean(x)^2)/(longitud-1)
    return(cuasiVarianza)
}
x <- 1:11

# Muestra el resultado de la funcion para comparar con la funcion propia de R
cuasiVar(x) 
var(x)
