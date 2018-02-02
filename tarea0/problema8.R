# problema 8
# primero ponemos los datos en un objeto
presion <- c(35, 35, 35, 35,
              49.5, 49.5, 49.5, 49.5,
              70, 70, 70, 70,
              99, 99, 99, 99,
              140, 140, 140, 140)

resistencia <- c(112, 119, 117, 113,
                 108, 99, 112, 118,
                 120, 106, 102, 109,
                 110, 101, 99, 104,
                 100, 102, 96, 101)

datos <- data.frame(presion, resistencia)

# ahora los graficamos
boxplot(resistencia~presion, data=datos)
