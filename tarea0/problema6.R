# problema 6
# primero definimos la ecuación
eq = function(x){exp(-x*x)/(1+x*x)}

# graficamos la función entre 0 y 10
curve(eq, from=0, to=10)

# ahora integramos entre 0 e infinito
integrate(eq, lower=0, upper=Inf)