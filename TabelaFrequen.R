#Tabela frequencia
x <- sample(c("A","B","C"),100,replace=T)
tab <- table(x)
tab
prop.table(tab)
install.packages("descr")
library("descr")
freq(x) 
