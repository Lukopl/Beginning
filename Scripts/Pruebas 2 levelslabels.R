a2 <- seq(0:5)
a2
a3 <- seq(0,5,length=20)


b1 <- c("a","b","a")
b2 <- rep(c("a","b"),5)
b3 <- rep(c("a","b"), rep(3:2))
b4 <- rep(c("b", "a"), rep (3:2))


c1 <- factor(c(0,1,1,1,0), levels=c(0,1),labels=c("a","b"))
c2 <- factor(c(1,1,1,1,2), levels=c(1,2),labels=c("a","b"))

help(levels)
help(labels)

d1 <- a1<1
d2 <- b1=="a"
d3 <- !(b1=="a")

sort(c1)
sort(10:5)
F <- c(74,58,64,12,25,8)
sort(F)
