
par(mfrow=c(2,4))
for(i in 1:7){
  plot(1,1,type="n")
  mtext(LETTERS[i])
}

x <- rnorm(1000)
e <- rnorm(1000)
y <- 1 - 1.2 * x + e

m <- lm(formula = y ~ x)
plot(x,y)
abline(m)
names(m)
summary(m)
hist(m$residuals)
predx=100
m$coefficients[1] + m$coefficients[2] * predx

predict(m, data.frame(x = 100) , interval="prediction")
m$fitted.values


x=data.frame(rnorm(1000),rexp(1000),rbinom(1000,1,.6))
names(x)<-c('x1','x2','x3')
View(x)
beta<-c(1.5,-0.8,1.1)
y<-as.matrix(x)%*%beta + rnorm(1000,0,1)
as.matrix(x)
m<-lm(y ~ x1 + x2 + x3, data=x)
summary(m)


