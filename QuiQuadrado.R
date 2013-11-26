#Qui-quadrado de um criterio
#Exemplo 1:Levin & Fox (2004), pg.298
pesq = c(muito=35, pouco=10, sem=15)
pesq
chisq.test(pesq)
####################
#Qui-quadrado de dois criterios
##Exemplo 1:Levin & Fox (2004), pg.306
qui= matrix(c(7,33,17,23),nrow=2)
qui
chisq.test(qui)
########################
#Qui-quadrado para varios grupos
##Exemplo 1:Levin & Fox (2004), pg.309
qui3= matrix(c(7,10,15,9,10,11,14,8,5),nrow=3)
qui3
chisq.test(qui3)
