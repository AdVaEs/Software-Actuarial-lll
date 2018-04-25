log(-1)

imprimeMSJ <- function(x) 
{
   if(x>0)
      print("x es mayor que 0")
   else
      print("x es menor o igual a 0")
   invisible(x)
}

imprimeMSJ(1)
imprimeMSJ(NA)

printmsg <- function(x) 
{
   if(is.na(x))
      print("Hay un valor faltante")
   else if(x >0)
      print("x es mayor que 0")
   else 
      print("x es menor o igual que 0")
   invisible(x)
}

printmsg(NA)
printmsg(1)
printmsg(-1)

mean(x)
traceback()

lm(y~x)
traceback()

debug(lm)
lm(y~x)

options(error = recover)
read.csv("El amor es una utopia")

options(error=stop)

#Simulacion

summary(airquality)
str(airquality)

m <- matrix(rnorm(100),10,10)
str(m)
summary(m)

x <- rnorm(10)
x
y <- rnorm(10,50,5)
y
summary(x)
summary(y)