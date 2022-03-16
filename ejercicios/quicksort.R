quicksort<-function(vector) {
	if(length(vector) <= 1) {
		return(vector)
	} else {
	
		pivote<-vector[1]
		vectorSinPivote<-vector[-1]
		vectorIzquierdo<-quicksort(vectorSinPivote[vectorSinPivote < pivote])
		vectorDerecho<-quicksort(vectorSinPivote[vectorSinPivote > pivote])
	}
	return (c(vectorIzquierdo, pivote, vectorDerecho))
}

x<-sample(1:200)
x
xOrdenado<-quicksort(x)
xOrdenado
