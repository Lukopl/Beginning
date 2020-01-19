
c(1,2,3,4)
c(1.5,2.5)
c(1,"a","b")
c(1i,"a",1)

notas <- c(8,6,5,9)
notas + 1
promedio <- mean (notas)
desv <- sd(notas)

notas^2
median(notas)
quantile(notas,probs = 0.1)

help (quantile)
plot(notas)

secuencia_molona <- seq(from=0, to=1000, by=2)
promedio <- mean(secuencia_molona)
promedio

secuencia_molona + 100
mean(secuencia_molona + 100)
promedio

mean(secuencia_molona * 2)
promedio * 2

sd(secuencia_molona * 2)

class(c(1.7,"a"))
class(c(1,7))
1.7


mrb <- rbind(c(1,4),c(2,2))
mrb
mcb <- cbind(c(1,4),c(2,2))
mcb

c1 <- factor(c(0,1,1,1,0),levels=c(0,1), labels=c("a","b"))
c1
levels <- c(0,1)
levels

labels <- c("a","b")



