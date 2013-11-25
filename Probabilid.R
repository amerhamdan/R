x <- seq(-4,4,by=.01)
y<-dnorm(x, mean=0,sd=1, log = FALSE)
rx<-rev(x)
ry<-vector("numeric", length(rx))
x<-c(x,rx)
y<-c(y,ry)
plot(x,y,"l",xlab="x",ylab="fdp(x)")
polygon(x, y, col = "gray")
#---------------------------------------
#simulando 100 lancamentos de uma moeda
x=1:100
x
y=cumsum(sample(0:1,100,rep=T))
y
plot(x,y/1:100, ylim=c(0,1), xlim=c(0,100), pch=16)
segments(1,0.5,100,0.5)
hist(y)
#-----------------------------------------
##simulando 100 lancamentos de um dado e dois dados
soma.1dado = sample(1:6,100,replace=T)
soma.1dado
hist(soma.1dado)#distribuicao uniforme
soma.2dado = sample(1:6,100,replace=T)+sample(1:6,100,replace=T)
soma.2dado
hist(soma.2dado)#distribuicao normal
#------------------------------------
#desenha uma curva de distribuicao normal em [-3,3]
curve(dnorm(x),-3,3)	
#--------------------------------------------
#funcao probabilidade normal
pnorm(20, 50, 15) 
# o primeiro valor Ã© referente ao calculo da probabilidade
#o segundo parÃ¢metro se refere a media
#e por Ãºltimo o valor do desvio padrÃ£o
#---------------------------------------------
