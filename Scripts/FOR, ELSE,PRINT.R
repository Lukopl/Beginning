matrix_molona <- matrix(seq(1,9), nrow = 3, byrow = TRUE)
matrix_molona
matrix_molona <- cbind( matrix_molona, c(7,3,4))
matrix_molona
matrix_molona <- rbind( matrix_molona, c(7,3,10,40))
matrix_molona
length(matrix_molona)
dim(matrix_molona)

lst <- list(1:5, "char", TRUE, 1 + 4i, matrix(1:9,nrow=3))
lst
names(lst) <- c("vector","texto","logico","imaginario","matriz")
lst
lst$matriz

cubo <- array(1:8,c(2,2,2))
cubo[2,1,2]
cubo



dataframe <- data.frame(
  edad = as.integer(rnorm(10, 40, 5)),
  sexo = rep( c("mujer","hombre","indefinido"), length.out=10),
  "pais origen" = c("es","mx","br","uk","pl","twn","ven","us","jp","zaf")
)
dataframe
dataframe$sexo
dataframe$pais.origen
dataframe["edad"]
dataframe[[1]]
names(dataframe)
colnames(dataframe)
rownames(dataframe)

summary(dataframe)
sd( dataframe$edad )











getwd()


a <- 20

if( a >= 20 ) {
  print("Molas")
} else {
  print("No molas")
}

numericos <- 1:100
for(paco in numericos){
  b <- paco + 3.14
  print(b)
}

for(i in 1:100){
  print("Soy tonto")
}

i <- 0
while( i < 20 ){
  if( i < 10) {
    print(cat("Eres feo ", i))
  } else {
    print(cat("Eres hermoso ", i))
  }
  
  i <- i + 1
}

x <- rnorm(10)
y <- ifelse(x<=0,x,NA)

x<-runif(5)
for(i in x){
  print(i)
}

for(i in 1:length(x)){
  print(x[i]^2)
}

rnorm()




