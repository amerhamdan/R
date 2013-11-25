#One Way Analysis of Variance
#Três níveis de drogas foram admistradas em 18pessoas
#tell where the data come from
datafilename="http://personality-project.org/R/datasets/R.appendix1.data"
data.ex1=read.table(datafilename,header=T)   #read the data into a table
data.ex1
#
aov.ex1 = aov(Alertness~Dosage,data=data.ex1)  #do the analysis of variance
summary(aov.ex1)                                    #show the summary table
#
print(model.tables(aov.ex1,"means"),digits=3)       #report the means and the number of subjects/cell
#
boxplot(Alertness~Dosage,data=data.ex1)        #graphical summary
###########################################
#Two way - between subject analysis of variance

datafilename="http://personality-project.org/r/datasets/R.appendix2.data"
data.ex2=read.table(datafilename,header=T)   #read the data into a table
data.ex2                                      #show the data
#
aov.ex2 = aov(Alertness~Gender*Dosage,data=data.ex2)         #do the analysis of variance

summary(aov.ex2)                                    #show the summary table
print(model.tables(aov.ex2,"means"),digits=3)       #report the means and the number of subjects/cell
boxplot(Alertness~Dosage*Gender,data=data.ex2) #graphical summary of means of the 4 cells
#####################################################
#1 way ANOVA - within subjects
#Five subjects are asked to memorize a list of words.
#The words on this list are of three types: positive words, negative words and neutral words
datafilename="http://personality-project.org/r/datasets/R.appendix3.data"
data.ex3=read.table(datafilename,header=T)   #read the data into a table
data.ex3                                      #show the data
#
aov.ex3 = aov(Recall~Valence+Error(Subject/Valence),data.ex3)
summary(aov.ex3)
#

print(model.tables(aov.ex3,"means"),digits=3)       #report the means and the number of subjects/cell
boxplot(Recall~Valence,data=data.ex3)          #graphical output
