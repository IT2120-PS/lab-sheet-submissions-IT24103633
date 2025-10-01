setwd("C:\\Users\\Aloka Fonseka\\Desktop\\PS 09")


#Q1
#Part 1 

y <- rnorm(24,mean =45,sd=2 )
y

#Part 2

t.test(y,mu=46,alternative ="less")