
z<-sample(0:1, size = 100,replace = TRUE)
x<-sort(runif(n = 100, min = 0, max = 4))
y<-20 + 7*x + 10*z - 5*z*x + rnorm(100,sd = 0.7)

##
sample(1:11, size=100, replace=TRUE)
runif(1, min=1, max=100)
##

dat<-data.frame(z=factor(z, labels = c("A","B")),x,y)
dat
head(dat)

plot(x,y)

m<-lm(y ~ x * z,data=dat)
summary(m)
abline(m)


nuevos <- data.frame(x=c(3.0,1.2),z=c(0,1))
nuevos

abline(coef(m)[1],coef(m)[2],col="red")
abline(coef(m)[1]+coef(m)[3],coef(m)[2]+coef(m)[4],col="green")

x <- seq(0, 1, by=1)
y <- exp(20 + x * 10 + rnorm(101, sd=0.5))

ylog <- log(y)
plot(x,log(y))

m <- lm(ylog~x)

library(MASS)




























