# problema 3
require(plotrix)
# generamos 1000 observaciones de una poison con lambda=0.61
mil_obs <- rpois(1000, 0.61)
# desplegamos su media
mean(mil_obs)
# desplegamos su varianza
var(mil_obs)

# generamos 10000 observaciones de una poison con lambda=0.61
diez_mil_obs <- rpois(10000, 0.61)
# desplegamos su media
mean(diez_mil_obs)
# desplegamos su varianza
var(diez_mil_obs)

# imprimimos la función de masa de probabilidad
par(mfrow=c(1,2))
hist(mil_obs, freq=FALSE)
hist(diez_mil_obs, freq=FALSE)
