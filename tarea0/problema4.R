sd.n <- function(muestra){
  # primero obtenemos la media y el tamaño de la muestra
  media <- mean(muestra)
  n <- length(muestra)
  suma <- 0
  # ahora obtenemos el estimador de máxima verosimilitud para
  # la varianza de una normal que viene dado por la varianza muestral tomando
  # como estimador de miu a x barra
  for(i in 1:n){
    suma <- suma + (muestra[i] - media)**2
  }
  sigma <- (suma/n)**(1/2)
  
  return(sigma)
}

sd.n(rnorm(100000, mean = 10, sd = 12))