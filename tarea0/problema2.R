# problema 2
library(car) 
# primero ponemos la altura y el año en un objeto
ganador <- c(185, 182, 182, 188, 188, 188, 185, 185, 177, 182, 182, 193, 183, 179, 179, 175)
oponente <- c(175, 193, 185, 187, 188, 173, 180, 177, 183, 185, 180, 180, 182, 178, 178, 173)
año <- c(2008, 2004, 2000, 1996, 1992, 1988, 1984, 1980, 1976, 1972, 1968, 1964, 1960, 1956, 1952, 1948)
alturas <- data.frame(ganador, oponente, año)
# ahora los graficamos
# la gráfica principal con el ganador
plot(año, ganador, 
     xlab="año", ylab="alturas", 
     main="Alturas presidentes EUA", pch=3)
# la gráfica superpuesta secundaria con el oponente
points(año, oponente, col=2)
