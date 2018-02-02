norma <- function(vector){
  # calculamos la norma euclidiana sumando todos los elementos al cuadrado 
  # sacando la raíz cuadrada de la suma
  suma <- 0
  for(elem in vector){
    suma <- suma + elem**2
  }
  res <- suma**(1/2)
  return(res)
}

# obtenemos la norma con la función antes especificada de vectores
v1 <- c(0,0,0,1)
norma(v1)

v2 <- c(2, 5, 2, 4)
norma(v2)

v3 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
norma(v3)