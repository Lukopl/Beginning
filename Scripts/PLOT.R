

x=data.frame(rnorm(1000),rexp(1000),rbinom(1000,1,.6))
names(x)<-c('x1','x2','x3')

beta<-c(1.5,-0.8,1.1)
y<-as.matrix(x)%*%beta + rnorm(1000,0,1)

plot(y)
plot(y,x$x1)
plot(y,x$x2)
#Las variables x1 y x2 son independientes y las añadimos al modelo
plot(x)


m<-lm(y ~ x1 + x2 + x3, data=x)
summary(m)
#Para ver la significación de la variable hay que fijarse en el p-valor
#Rsquare predice el valor de estimación del modelo













