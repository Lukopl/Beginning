#apply. para fila y columna
#tapply. aplicar una funcion a cada data frame o tabla.
#lapply. coge los elementos de una lista y aplica una transformación

pokemon <- read.csv("Pokemon.csv")

#library("xlsx")
#POnme todas las filas, luego elijo las columnas que saco.

stats <- pokemon[,c("HP","Attack","Defense")]
mean(stats$HP)

#2 indica columnas
apply(stats,2,mean)
apply(stats,2,sd)

#1 indica fila
apply(stats,1,mean)

avg_type <- tapply(pokemon$Attack, pokemon$Type.1,mean)
write.csv(avg_type, "paco.csv")

#Split.Filtra por generacion cada pokemon
generations <- split(pokemon, pokemon$Generation)

generations[[6]]
#Yo le ody una lista con 6 dataframes, la función
sapply(generations,summary)


#Establecer una condición
b <- 9

if(a > 20) {
  print("molas")
} else {
  print("No molas")
}


numericos <- 1:100
for( paco in numericos){
  b <- paco + 3.14
  print (b)
}

i <- 0

while( i < 20 ){
  if( i < 10) {
    print("Eres feo")
  } else{
    print("Eres hermoso")
  }
  
print(i)
i <- i+1
}

#Cuál es el pokemon más fuerte en ataque?


#Qué generación tiene los pokemon más rapidos?
speed_generational <- pokemon[,c("Generation","Speed")]
tapply(speed_generational$Speed,speed_generational&Generation, mean)
tapply(speed_generational$Speed,speed_generational&Generation, max)

#Cuál es el pokemon más rápido?
max(speed_generational$Speed)
pokemon[$Speed == 100, ]
pokemon$Speed == 100

#Qué pokemon tiene mas velocidad?
max(pokemon$Attack)
pokemon[ pokemon$Speed==180, ]

#Crear un función. Bloque d ecódigo donde le metemos datos y nos saca un resultado

bestpokemon <- function(skill) {
 max_skill <- max(pokemon[,skill])
  pokemon[ pokemon[,skill]== max_skill, ]
}

#Todo lo debajo de este bloque se va a ejecutar. Variable que solo existe aquí dentro
#Parametrizar

bestpokemon("Speed")
bestpokemon ("Attack")
bestpokemon ("HP")
#Solo he de canviar un parámetro para visualizar el pkm

data <- pokemon[,c("Name","HP", "Attack", "Defense")]
todos_pokemon_avg <- apply(data,1,mean)
max_avg <- max(todos_pokemon_avg)
todos_pokemon_avg[ todos_pokemon_avg == max_avg]

final <- cbind(data,todos_pokemon_avg)
final[ final$todos_pokemon_avg]








