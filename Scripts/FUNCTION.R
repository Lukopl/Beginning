
f2<-function(x,y) {
  r1<-(x/y)*100
  r2<-(y/x)*100
  return(c(r1,r2))
}
#No es necesario poner "return" para llamar la función
f2(7,15)
#Es lo mismo que:
f2(x=7,y=15)



