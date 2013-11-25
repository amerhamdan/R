#programming with R
#variables and assignment
#syntax
x<-5; y<-7 #same as the following two lines
x
y
x<-yË2/5 #same as the following
x <- yË2 / 5
#this is a comment
MyVariable<-5
MyVariable
myvariable
###############
#Arithmetic operators
2+4
y<-0
x<-4
x*y
z<-5
(x+y)*z/x
######################
#Logical and Relational operators
x<-6
y<-2
#if x is less than or equal to y then add them to get z
if(x<=y){ z<-x+y}
#conditon is not true so nothing happens
z
#if the reverse relational operator is used
#then the condition is true and z is assigned x+y
if(x>=y) z<-x+y
z
q<-3
t<-5
#if else conditional statement written on one line
if(q<t)(w<-q+t) else w<-q-t
w
if(q<t){
  w<-q+t
  }else
    w<-q-t
