#----------------------------------------------------#
# Estatistica descritiva II                          #
# Amer Cavalheiro Hamdan                             #
# Novembro/2012                                      #
#----------------------------------------------------#
# Exercicios
#----------------------------------------------------
x = c(45,43,46,48,51,46,50,47,46,45)	# entrada de dados(vetor)
table(x)	# fornece a frequencia dos valores
mean(x)	# media dos dados
median(x) 	# mediana
max(x) 	# valor maximo
min(x) 	# valor minimo
range(x)	#amplitude total (min(x) e o max(x))
length(x)	# numero de itens
var(x)	# variancia
sd(x)		# desvio-padrao
quantile(x)	# calcula os quartis de x
summary(x)	# apresenta um resumo estatistico
sd(x)/sqrt(length(x))	# erro padrao da media
#####################################################
# estatistica descritiva usando o pacote psych
install.packages("psych")#instala o pacote psych
??psych #para obter informacoes sobre o pacote psych
library(psych) #ativa o pacote psych
data(sat.act)#ativa o dados armazenados
describe(sat.act)# estatistica descritiva
#######################################################
# Estatistica descritiva para dados agrupados
describe.by(sat.act,sat.act$gender,skew=FALSE,ranges=FALSE)
#################################################
# funcao para calcular a moda
moda<-function(d)
{
if ((is.vector(d) || is.matrix(d) || is.factor(d)==TRUE) &&
(is.list(d)==FALSE))
{
dd<-table(d)
valores<-which(dd==max(dd))
vmodal<-0
for(i in 1:(length(valores)))
if (i==1) vmodal<-as.numeric(names(valores[i]))
else
vmodal<-c(vmodal,as.numeric(names(valores[i])))
if (length(vmodal)==length(dd))
print("conjunto sem valor modal")
else return(vmodal)
}
else print("o parametro deve ser um vetor ou uma matriz")
}
# exemplo para moda
exemplox<-c(1,2,3,4,5,5,5,5,5,6,6,7,7,8)
moda(exemplox)

