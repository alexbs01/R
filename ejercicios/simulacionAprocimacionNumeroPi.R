set.seed()
n <- 10000
x <- runif(n, -1, 1)
y <- runif(n, -1, 1)
indice <- (x^2 + y^2 <= 1)
solucion <- mean(indice)
print(solucion)

color <- ifelse(indice, "black", "red")   # Vector de colores depediendo de si el indice correspondiente es verdadero
simbolo <- ifelse(indice, 1, 4)  # Vector de simbolos
plot(x, y, pch = simbolo, col = color, xlim = c(-1, 1), ylim = c(-1, 1), xlab="X", ylab="Y", asp = 1) #asp = 1 para dibujar circulo
symbols(0, 0, circles = 1, inches = FALSE, add = TRUE)
symbols(0, 0, squares = 2, inches = FALSE, add = TRUE)

solucion*4

