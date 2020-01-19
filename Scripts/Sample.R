
x<- as.factor(sample(rep(1:5, c(10,20,30,40,50))))
x

levels(x) <- c("uno", "dos", "tres", "cuatro", "cinco")
nlevels(x)

x <- factor(c("a","b","a","c","b"))
y <- as.vector(x)
y <- as.numeric(x)


Am <- matrix(sample(1:10,100,re=T),10,10)
Ad<-Am+t(Am)


dat <- c(7.3, 6.8, 0.005, 9, 12, 2.4, 18.9, .9)
mean(dat)
sqrt(dat)
sum(dat>1)
dat[dat>sqrt(dat)]









