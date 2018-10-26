#starting to work in R

# assign----
x1 = 3
x2 <- 3
#print values
x1
x2
#Assign and print
(x3=3)
#environment----
#variables in env
ls()
# datasets available for use
data()
women
?women
?mtcars
mtcars
mtcars$mpg
attach(mtcars)
mgp
#libraries currently loaded
library()
#Elements
ls()
rm(list=ls())
rm(list = ls(all = TRUE))
x1
women

#create values
1:100
seq(0,100, by=2)
seq(1,100, by=1)

seq(1,10, length.out = 5)
x = c(0:10)
x
#Function on data
xm = mean(x)
xm
#version of R
version
# todays date

source('test1.R')
