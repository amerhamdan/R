#---------------------------------------
#Regressao linear simples
#Amer Cavalheiro Hamdan
#Dezembro/2012
#---------------------------------------------
#Dados para análise
altura = c(175, 168, 170, 171, 169, 165, 165, 160, 180, 186)
peso = c(80, 68, 72, 75, 70, 65, 62, 60, 85, 90)

#Analise exploratoria
table(altura)
summary(altura)
sd(altura)
boxplot(altura)
hist(altura)
plot(density(altura, na.rm=TRUE))
dotchart(altura)
qqnorm(altura)
qqline(altura)

table(peso)
summary(peso)
sd(peso)
boxplot(peso)
hist(peso)
plot(density(peso, na.rm=TRUE))
dotchart(peso)
qqnorm(peso)
qqline(peso)

#Analise bivariada
cor.test(altura, peso)
plot(altura~peso)

#Modelo de regressao
modelo = lm(altura ~ peso)
modelo
summary(modelo)

#Intervalo de confianca das estimativas a e b
confint(modelo, level=0.95)

#grafico da regressao
plot(peso, altura)
abline(modelo)

#diagnostico dos residuos
residuos = residuals(modelo)
residuos
hist(residuos)

predito = fitted.values(modelo)
predito

plot (predito, residuos)
plot(modelo)
