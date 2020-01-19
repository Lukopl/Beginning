x <- rnorm(100, 5, 2)
plot(sort(x), type='o', cex=0.1, pch=x)
#La frecuencia ha de ser relativa y no absoluta de 0 a 100
hist(x, freq=FALSE, col = "yellow")
lines(density(x))

#Cómo instalar un paquete en R 
library("ggplot2")
install.packages("ggplot2")

boxplot(x)
dotchart(x)


pokemon <- read.csv("Pokemon.csv")
pokemon

barplot(table(pokemon$Type.1, pokemon$Generation))
plot(pokemon$Attack, pokemon&Defense)

#Selector de variables
pokemon [,c("HP", "Attack", "Defense", "Speed")]
#instalar plotly
install.packages("plotly")

#Mirar la Introduction de R en su pagina oficial




