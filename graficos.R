#----------------------------------------------------#
# Graficos                                           #
# Amer Cavalheiro Hamdan                             #
# NOVEMBRO/2012                                      #
#----------------------------------------------------#
#-----------------------------------------------------
# Graficos
################################
demo(graphics) #Apresenta uma demostracao de graficos
demo(image)
demo(persp)
barplot(sample(10:100,10)) #cria grafico em barras para dados categoricos
pie(c(1,5,7,10))  #cria grafico em setores(pizza) para dados categoricos
hist(x)	# histograma para dados numericos
boxplot(x, outline=TRUE)	# caixa-box com outlines para dados numericos
stem(x)	# grafico de ramos e folhas para dados numericos
###########################################
# Grafico de dispersao
y<-c(110,120,90,70,50,80,40,40,50,30)
xx<-1:10
plot(xx,y)
##########################################
#grafico em linha
plot(xx,y,type="l")
#####################################################
# funcao eda.uni(): cria graficos para detecao de normalidade
eda.uni <- function(x,title="")
{
par (mfrow = c(2,2))
hist(x,main=title)
plot(density(x, na.rm=T),main="Smoothed Histogram")
qqnorm(x); qqline(x)
boxplot(x,horizontal=TRUE,main="BoxPlot")
}
# exemplo:
eda.uni(x)
###############################################
# funcao plot.normX(): cria uma curva normal na distribuicao de dados
plot.normX <- function (x)		
{
	plot ( density(x, na.rm=T), col=4, main = paste("Density of ", deparse(substitute(x))),
			sub = "With Corresponding Normal" )
	lines ( density(qnorm (ppoints(length (x[!(is.na(x))])),
		mean(x, na.rm=T), sd(x, na.rm=T))), lty=2, col=2)
}
# exemplo:
plot.normX(x)
##################################################
# Grafico correlacoes
x=rnorm(100)
y=x*1000
par(mar = c(9,8,5,5))
plot(x,y, ylab = expression(('odeio o windows')^2), xlab = "odeio muito" )
###################################################
#incluir texto no grafico
plot(x,y,xlab="Eixo X aqui",ylab="Eixo Y aqui")
title("Titulo vai aqui")
text(6,4000,"Texto em qualquer lugar")
#################################################
#Criar graficos multiplos
par(mfrow=c(2,2)) #arranjamento ?2 por 2?
plot(x,y)
plot(x,y) 
plot(x,2*y)
plot(x,log(y)) 
# etc.
#observacao
par(mfrow=c(1,1)) #para retomar um grafico por janela

