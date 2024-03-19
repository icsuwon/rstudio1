########
#예제 1#
########

#(1)
sqrt(2)
#(2)
exp(5)
#(3)
log10(20)
#(4)
log(20)
#(5)
gamma(5)
#(6)
abs(-4.5)
#(7)
round(pi,2)

########
#예제 2#
########

install.packages('fitdistrplus')
library(fitdistrplus)
#(1)
dnorm(x = 5, mean=5, sd=1, log=FALSE)
#(2)
dexp(x=1,rate = 5, log = FALSE)
#(3)
dweibull(x = 50,shape = 80,  scale=1.5, log = FALSE)

########
#예제 3#
########

#(1)
A = 5
b = 6
2*A+b**2
rm(A,b)
#(2)
A = 5
b = 6
A**5*3**b
rm(A,b)

########
#예제 4#
########

Normal <- function(x,u,o){
  value <- 10*1/(o*sqrt(2*pi))*exp(-(x-u)**2/(2*o**2))
  return (value)
}
Normal(0,0,1)
########
#예제 5#
########

#(1)
sum(1:100*1:100)

#(2)
prod(1:10)

#(3)
sum(cos((1:20)/20*pi))

########
#예제 6#
########
x = seq(2,18, by=2)
mat = matrix(x, nrow = 3)
dimnames(mat)[[1]] = c("A","B","C")
dimnames(mat)[[2]] = c("가","나","다")
mat[2,3]
mat
########
#예제 7#
########

library(dplyr)
data(iris)
iris[101:150,] #수업자료를 통해 추출한 방법
iris %>% filter(Species == "virginica") # 책에서 확인한 방법

########
#예제 8#
########
list1 = list(iris[[3]], iris$Species)
list1

########
#예제 9#
########


code = function(x){
  for(i in 1: as.numeric(dim(x)[[1]])){
    if(x[i,]$Species == "setosa"){
      print(1)
    }else if(x[i,]$Species=="versicolor"){
      print(2)
    }else if(x[i,]$Species=="virginica"){
      print(3)
    }
  }
}

code(iris)
