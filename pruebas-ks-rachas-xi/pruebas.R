# lab1 - aplicando diferentes pruebas a los números aleatorios
# primero definimos la funcion que nos genera los numero aleatorios
library(randtoolbox)
options(scipen = 9)
seed <- as.double(9)
RANDU <- function(){
  seed <<- ((2^16 + 3) * seed) %% (2^31)
  seed/(2^31)
}
# ahora generamos 1000 numeros aleatorios
randu0 <- NULL
for(i in 1:1000) randu0[i] <- RANDU()
head(randu0, 20)

# probamos KS
ks.test(randu0, "punif")

# graficamos la funcion de distribucion empirica
plot(ecdf(randu0))

# graficamos la funcion de distribucion teorica
lines(sort(randu0),punif(sort(randu0)), col="red")

# imprimimos la qq plot que nos dice si los cuantiles están bien e iguales
qqplot(randu0, qunif(sort(randu0)))

# otra prueba
x <- NULL
for(i in 1:100) x[i] <- RANDU()
gap.test(x)