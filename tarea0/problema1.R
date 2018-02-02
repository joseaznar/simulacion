# problema 1 - a)
# primero obtenemos una tabla donde pondremos los valores
dist1 <- table(0:12)
# iteramos simulando una binomial con p=1/6 y n=12
for(i in 0:12){
  dist1[i+1] <- dbinom(i, 12, prob=1/6)
}
# sacamos la distribución acumulada
dist1 <- cumsum(dist1)
# imprimimos el resultado
print(dist1, digits=12)

# problema 1 - b)
# primero obtenemos una tabla donde pondremos los valores
dist2 <- table(0:12)
# iteramos simulando una binomial con p=1/6 y n=12
for(i in 0:12){
  dist2[i+1] <- pbinom(i, 12, prob=1/6)
}
# imprimimos el resultado
print(dist2, digits=12)

# problema 1 - c)
# calculamos P(X>7) como 1 - P(X<=6)
prob <- 1 - dist2[7]
# imprimimos el resultado
print(prob, digits=12)
