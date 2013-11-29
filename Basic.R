# R basic
###################
# The command line
2+9
7*8
2*(4+6)
what
####################
#basic of working with R
#Types of data objects in R
#scalars
#create scalar data object x with value 5
x<-5
#create scalar data object y with value 2
y<-2
# some manipulations on scalar objects x and y
z<-x+y
z
x-y
x*y+2
correctlogic<-T
correctlogic
incorrectlogi<-"T"
incorrectlogi
single<-'singleQuote'
souble<-"doubleQuote"
single
souble
#You will get an error if you enter character data with no quotes at all
tryThis<-HAHA
mode(x)
mode(correctlogic)
mode(incorrectlogi)
##########################
#vectors
newVector<-c(2,5,5,3,3,6,2,3,5,6,3)
newVector
scannedVector<-scan()
2
3
3
53
v1<-c(1,2,3)
v1
v2<-c(4,5,6)
v2
z<-v1+v2
z
x1<-c(1,2,3)
x2<-c(3,4)
x3<-x1+x2
x3
q<-c(v1,v2)
q
x<-rep(3,7)
x
charvec<-rep("haha",4)
charvec
############################
#factors
settings<-c("high", "Medium", "Low")
settings<-factor(settings)
settings
##############################
#Matrices and arrays
mat<-matrix(c(2,3,1,5), nrow=2,ncol=2)
mat
onemat<-matrix(1,nrow=2, ncol=3)
onemat
matrix(c(1,2,3,4,5,6,7),ncol=3)
##################
#lists
myList<-list(5,6,"seven", mat)
myList
####################
#Data frame
organism<-c("Human", "Mouse", "Fruit Fly", "Roundworm", "Yeast")
genomeSizeBP<-c(3000000000, 30000000000, 135600000, 97000000, 121000000)
estGeneCount<-c(30000, 30000, 13061, 19099, 6034)
comaprativeGenomeSize<-data.frame(organism=organism,genomeSizeBP=genomeSizeBP,estGeneCount=estGeneCount)
comaprativeGenomeSize
###########################
#Working wit data objects
#working with vectors
y<-c(9,2,4)
y[2]
z<-c(1,2,3,4,12,31,2,51,23,1,23,2341,23,512,32,312,123,21,3)
z[3:7]
z[3]<-7#overwrite
z[3:7]
sort(z)
order(z)
#extracting specific elements
z3<-z[c(2,3)]
z3
#logical extraction, note syntax
z100<-z[z>100]
z100
length(z)
#########################
#working with data frames
x<-c(1,3,2,1)
y<-c(2,3,4,1)
xy<-data.frame(x,y)
xy
#use q to create new vector extracting x column of dataframe xy
q<-xy$x
q
xy$x[2]
#create and bind column z to
z<-c(2,1,4,7)
xyz<-cbind(xy,z)
xyz
#create and bind new row w
w<-c(3,4,7)
xyz<-rbind(xyz,w)
xyz
############################
#checking and changing types
x<-c(1,2,3,4)
#checking data object type
is.vector(x)
is.data.frame(x)
# checking data mode
is.character(x)
is.numeric(x)
y<-as.matrix(x)
y
z<-as.character(x)
z
words<-c("Hello", "Hi")
words
as.numeric(words)
############################
#Missing data
missingData<-c(1,3,1,NA,2,1)
missingData
missingData2<-missingData*2
missingData2
is.na(missingData[1])
is.na(missingData[4])
############################
#controlling the workspace
#Listing and deleting objects in memory
ls()
objects()
rm(q)
ls()
rm(list=ls()) #remove all
###########################
#editing data objetcts
x<-c(3,1,3,5,12,3,12,1,2,3,5,7,3,1,3)
data.entry(x)
#####################
#Saving your work
#save to file
#savehistory
x<-c(1,2,3,4,5)
x
savehistory(file="shortSession.Rhistory")
###############
#saving workspace image
x<-c(1,2,3,4,5)
x
save.image()
load()
#######################
#importing files
sizeTime<-read.table("sizeTime.txt",header=T)
sizeTime
#################
#Get help
help(sum)
?sum
