#--------------------------------
# Teste t de Student
# Amer Cavalheiro Hamdan
# Novembro/2012
#-----------------------------------
#Entrada de dados
idade1 = c(34, 37, 37, 38, 41, 42, 43, 44, 44, 45, 45, 45, 46,
           48, 49, 53, 53, 54, 54, 55, 56, 57, 60)
idade2 = c(27, 33, 36, 37, 38, 38, 39, 42, 42, 43, 43, 44, 44,
           44, 45, 45, 45, 45, 46, 46, 47, 47, 48, 48, 49, 49, 51, 51, 52,
           54).
summary(idade1) 
summary(idade2)
boxplot(idade1, idade2)
t.test(idade1, idade2)
#------------------------------
# Teste t de Student
# Amer Cavalheiro Hamdan
# Novembro/2012
#-----------------------------------
# teste t pareado
Altura1 = c(173, 180, 160, 178, 180, 152, 165, 163, 137, 160,
            168, 183)
Altura2 = c(172, 177, 165, 173, 179, 154, 164, 170, 141, 188,
            165, 180)
summary(Altura1) 
summary(Altura2) 
boxplot(Altura1, Altura2)
t.test(Altura1, Altura2, paired=T)
#---------------------------------
