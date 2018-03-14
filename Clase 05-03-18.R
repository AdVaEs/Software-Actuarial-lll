#Dump y Source
setwd("~/Github/Software-Actuarial-lll/Software-Actuarial-lll")

x<- "Software Actuarial III"
y<- data.frame(a=1,b="a")
dump(c("x","y"),file = "data.R")
rm(x,y)

source("data.R")

#Conexiones


#Subconjuntos

#Creamos un vector
x<- c("a","b","c","d","e")
#Vemos el vector
x
#Extraemos elementos con []
x[1]
x[2]
#Tambien podemos extraer una secuencia de elementos 
x[1:4]
#Es posible extraer elementos que cumplen un arestriccion
x[x>"b"]
#De una manera equivalente se puede obtener un vector logico
u<- x == "c"
u
x[u]
x[5-2]

#Creamos una lista
x<- list(foo=1:4,bar=0.6)
x
x[1]     #Extraccion en Lista
x[[1]]   #Extraccion en vector

x$foo
x["bar"]
x[["bar"]]

x<- list(foo=1:4,bar=0.6, baz= "Hola")
#Extrae elementos no secuenciales 1 si, 2 no, 3 si
x[c(1,3)]
#Extrae secuencialmente desde los elementors extraidos
#Primero extrae el 1er elemento y de ahi extrae la 3ra poscion
x[[c(1,3)]]

name <- "baz"
x[name]
x[[name]]
x$name

