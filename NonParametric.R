############################################
# Aula: Testes n?o param?tricos com o R
# Amer Cavalheiro Hamdan
# Novembro/2011
#############################################
###################################################
# Programa:
# 0. Oque s?o m?todos estatisticos n?o param?tricos?
# 1.Sign Test
# 2.Mann-Whitney-Wilcoxon Test
# 3.Wilcoxon Signed-Rank Test
# 4.Kruskal-Wallis Test
#
##################################################
# 0. O que s?o metodos n?o param?tricos?
#
# Um m?todo estat?stico ? chamado de n?o-param?tricos qunado n?o h? nenhuma suposi??o sobre o tipo de distribui??o da popula??o ou tamanho da amostra.
# Em geral, as conclus?es extra?das dos m?todos n?o-param?tricos n?o s?o t?o poderosos como os param?tricos. 
# No entanto, s?o mais flex?veis, mais robustos e aplic?veis aos dados n?o quantitativos.
#
################################
# 1.Sign Test 
#
# Um teste do sinal ? usado para decidir se uma distribui??o binomial tem a mesma chance de sucesso e o fracasso.
#
binom.test(5, 18) #repesenta cinco sucessos em dezoito tentativas
#
###############################
# 2. Mann-Whitney-Wilcoxon Test
#
# As Duas amostras s?o independentes.
# 
humor1 = c(7,15,14,3,17)
humor1
humor2 = c(4,6,11,7,9,4,7)
humor2
wilcox.test (humor1, humor2)
#
humor = c(7,15,14,3,17,4,6,11,7,9,4,7)
humor
grupo = c(1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2)
grupo
data.humor = data.frame(cbind(grupo, humor))
data.humor
wilcox.test(humor ~ grupo, data=data.humor)
#
####################################################
# 3. Wilcoxon Signed-Rank Test

# As duas amostras s?o pareadas. 
# 
antes = c(5,6,2,4,6,7,3,5,5,5)
antes
depois = c(7,6,3,8,7,6,7,8,5,8)
depois
wilcox.test(antes, depois, paired=TRUE)
#
#################################################
# 4. Kruskal-Wallis Test
#
# Para tr?s ou mais amostras independentes
#
escore = c(58,47,67,58,45,56,49,39,53,55,61,63,53,58,45)
escore
fator = c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,3)
fator
kruskal.test(escore~fator)
#
####################
