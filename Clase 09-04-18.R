#Vectorizar una funcion

noise <- function(n,mean,ds)
{
   rnorm(n,mean,ds)
}
noise(5,1,2)

noise(1:5,1:5,2)

mapply(noise, 1:5,1:5,2)

str(tapply)

x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
f
tapply(x, f, mean)

tapply(x, f, mean, simplify = F)

split(x,f)

lapply(split(x,f),mean)

x<-split(mtcars,mtcars$cyl)

sapply(split(mtcars$hp,mtcars$cyl),mean)
sapply(split(mtcars$mpg,mtcars$cyl),mean)