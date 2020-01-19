
sim <- rbinom(1,0.5, size=100)
#hist(sim)
sim
#Cantidad de veces que lanzas la moneda y sale cara.
sim <- rbinom(1000000,0.5, size=100)
sim
hist(sim)

#Para ver el número de veces que sale cara
histograma<- hist(sim)
histograma$counts

abline(v=69,col=2)
abline(v=35,col=2)
abline(v=57,col=2)

#Python
sum(sim > 86) / lenght(sim)
sum(sim < 35) / lenght(sim)
sum(sim > 57) / lenght(sim)


x = rnorm(n=1000,10,1)
hist(x)

#"mu" es el promedio
test = t.test(x,mu=10)
test

x <- rnorm(100,20,10)
y <- rnorm(100,50,10)

test <- t.test(x,y)
test
x

#p-value: % de casos más extremos del que observamos.

data <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/mediation/school.csv")

tdata <- table(data$smorale,data$catholic)
round(prop.table(tdata),2)

chisq.test(tdata)























