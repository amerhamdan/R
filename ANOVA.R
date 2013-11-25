#--------------------------------------------
#ANOVA
#Amer Cavalheiro Hamdan
#Dezembro/2012
#-------------------------------------------
#Comparar a media de tres grupos no desempenho de um teste de memóraria em relacao ao
#consumo de alcool
#H0 = x1 = x2 = x3
#Ha = x1 >< x2 >< x3

#grupo placebo (sem alcool)
placebo = c(5.3, 10.5, 7.2, 3.5, 5.1, 7.8, 11.2, 2.5, 3.7, 5.3, 6.1, 6.8)
placebo

#Analise exploratoria dos dados
summary(placebo)
sd(placebo)
boxplot(placebo)
hist(placebo)
plot(density(placebo, na.rm=TRUE))
dotchart(placebo)
qqnorm(placebo)
qqline(placebo)

#grupo pouco consumo de alcool
pouco.alc = c(5.5, 7.6, 9.2, 8.5, 2.9, 5.3, 6.6, 6.9, 4.1, 4.4, 8.7, 10.1)
pouco.alc

#Analise exploratoria dos dados
summary(pouco.alc)
sd(pouco.alc)
boxplot(pouco.alc)
hist(pouco.alc)
plot(density(pouco.alc, na.rm=TRUE))
dotchart(pouco.alc)
qqnorm(pouco.alc)
qqline(pouco.alc)

#grupo com muito consumo de alcool
muito.alc = c(8.4, 10.2, 8.7, 9.3, 11.2, 15.8, 7.5, 11.2, 8.9, 8.5, 17.3, 11.2)
muito.alc

#Analise exploratoria dos dados
summary(muito.alc)
sd(muito.alc)
boxplot(muito.alc)
hist(muito.alc)
plot(density(muito.alc, na.rm=TRUE))
dotchart(muito.alc)
qqnorm(muito.alc)
qqline(muito.alc)

#construcao de um data frame
dados1 =data.frame(grupo=gl(3, 12),resultado=c(placebo,pouco.alc,muito.alc))
dados1
attach(dados1)

#transformar grupo em fator
grupo = factor(grupo)
is.factor(grupo)

#Modelo da ANOVA
modelo.anova = aov(resultado~grupo)
summary(modelo.anova)

#Grafico boxplot comparando os grupos
boxplot(placebo, pouco.alc, muito.alc)

#Pos-Hoc (Teste de Tukey)
TukeyHSD(modelo.anova, ordered = TRUE)

#grafico do Teste de Tukey
plot(TukeyHSD(modelo.anova, ordered=TRUE))
