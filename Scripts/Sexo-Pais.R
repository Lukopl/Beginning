
paquito <- seq(1,1000)
paquito(100:200)
paquito[50:length(paquito)]

#En R se comienza a contar desde el 1
paquito <- c("manuel", "paco", "carlos", "casa", "perro")
paquito[3]

#Cuantas filas (nrow) cuantas columnas (ncol)
matrix_molona <- matrix(seq(1,9), nrow = 3, byrow = TRUE)
matrix_molona
#Número que esta en la tercera fila y segunda columna
matrix_molona[3,2]

#Las matrix entienden como predeterminado las columnas
#La matriz ha de tener el mismo tipo de dato

#cbind: añade otra columnas mas; tiene que tener el mismo numero de filas
cbind(matrix_molona, c(7,3,4))
#rbind: añade otra fila más
rbind(matrix_molona, c(4,6,8))

#Como añadir una nueva fila y nueva columna
matrix_molonas <- (cbind(matrix_molona, c(7,3,4))
matrix_molonas <- (rbind(matrix_molona), c(4,6,8))

#Qué dimension tiene mi matriz
length(matrix_molona)
dim(matrix_molona)


lst <- list(1:5,"char", TRUE, 1 + 4i, matrix(1:9,nrow=3))
lst
#Como acceder en un elemento de la lista
lst[[1]]

lst[[2]]

#Como dar valor a los items ???????????
names(lst) <- c("Vector","Texto","Logico","Imaginario","Matriz")

#Acceder a la matriz
lst$matriz

lst <- list(paco=1:5, logical= TRUE)

#Para hacer un cubo (3 dimensiones)
cubo <- array(1:8, c(2,2,2))
cubo
#Cogeme todas las filas, todas las columnas, cogeme la matriz
cubo[2,1,2]

#Data frame: cada elemento constituye una columna y la longitud una fila
#Todos los elementos de la columna tienen el mismo tipo de dato pero las filas no
#Integridad: mismo numero de filas y columnas

dataframe <- data.frame(
  edad = as.integer(rnorm(10, 40, 5)),
  sexo = rep(c("hombre", "mujer", "indefinido")), lenght.out=10),
  "pais origen" = c("es","mx","br","uk","pl","twn","ven","us","jp","zaf")
)
dataframe

#rnorm(numero elementos, media edad, desviacion tipica)
#as.integer: para quitarle los decimales del rnorm

#para sacar algun elemento del dataframe
dataframe$sexo
dataframe$pais

dataframe["edad"]
dataframe$pais.origen

dim(dataframe)
names(dataframe)

#nombres de fila
colnames(dataframe)

#nombres de columnas
rownames(dataframe)

#Qué cosas hacer con Dataframe
summary(dataframe)

#Calcular la desviacion de la columna edad
sd( dataframe$edad)

rep(c(5,20), length.out=15)


