# problema 7
# primero definimos la matriz
x <- matrix(rnorm(20),10,2)

# ahora aplicamos la norma a cada uno de los elementos
apply(x, 1, norma)
