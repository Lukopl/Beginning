
data <- read.csv("consumo_cerveza.csv")
head(data)

summary(data)

#Convertir esta variable en categorica. Lo convertimos en factor.
data$endweek

data$endweek.factor <- factor(data$endweek,
      levels = c(0,1),
     labels = c("no es finde", "es finde, party hard")
)
summary(data)


numeric_cols <- data[,2:7]

plot(numeric_cols)
cor(numeric_cols)

m <- lm(beer_consumtion ~ max_temp
        +endweek.factor, data=data)
summary(m)


m <- lm(beer_consumtion ~ avg_temp
        +min_temp+max_temp+precip+endweek.factor, data=data)
summary(m)

#max temp 30
# 0 soleado
# fin de semana

estimacion <- 6432 + 668*30 + 0 + 5184

#Calcular la desviación de los residuos
estimacion - 2*sd(m$residuals)

#Análisi de los residuos
plot(m$residuals)

#Si tus datos coinciden con los quantiles teoricos se muestra una recta
qqnorm(m$residuals)

#La regresión lineal es adecuada para el calculo de modelos on variables dentro de los valores minimos y maximos
























