lm
lm <- function(x) {x*x}
lm
rm(lm)
lm

library(swirl)
search()

hacer.potencia <- function(n)
{
  potencia <- function(x)
  {
    x^n
  }
  potencia
}

cubica <- hacer.potencia(3)
cuadrada <- hacer.potencia(2)

cubica(3)

y <- 10
f <- function(x)
{
  y<-2
  y^2+g(x)
}
g<- function(x)
{
  x*y
}
f(3)


x <- as.Date("1998-08-09")
x
unclass(x)

weekdays(as.Date("1998-08-09"))