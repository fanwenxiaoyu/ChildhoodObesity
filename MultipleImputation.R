setwd("~/ccny_courses/project/data")
obesity<-read.csv('cleaned12_5.csv')
#test<-read.csv('test.csv')
library(lattice)
library(MASS)
library(nnet)
library(mice)
#imp=mice(test,m=1)
tempData <- mice(obesity,m=3,maxit=1,meth='pmm',seed=500) #multiple imputation
# runing time = m*maxit*columns, slow for big dataset.
completedData <- complete(tempData,1)
write.csv(completedData,'Cleaned12_1.csv')

