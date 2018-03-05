#Listas 
x<- list(1,"a",TRUE,3+2i,5L)
x
#Todos los elementos de una lista mantienen su clase original

#Matrices
m<- matrix(nrow = 2,ncol = 3)
m<-matrix(NA,2,3)
m
dim(m)
attributes(m)

#Como llenar una matriz
m<-matrix(data = 1:6,nrow = 2,ncol = 3)
m<-matrix(1:6,2,3)
m
#La manera automatica de llenarse fue columna por columna
#Si yo quisiera que se llenara fila por fila, sería
m<-matrix(data = 1:6,nrow = 2,ncol = 3,byrow = TRUE)
m<-matrix(1:6,2,3,T)
m

#Una manera alternativa de crear una matriz es a través de un vector y modificar su dimension
n<-1:10
n
dim(n)<- c(2,5)
n

#Otra forma de crear una matriz es unir vectores
x<-1:3
y<-10:12
#CBind une columnas
cbind(x,y)
#RBind une filas
rbind(x,y)

#Factores
x<-factor(c("si","si","no","no","si"))
x
x<-factor(c("Azul","Verde","Verde","Azul","Rojo"))
x

table(x)
unclass(x)

#Factores con orden definido
x<-factor(c("Azul","Verde","Verde","Azul","Rojo"),levels = c("Rojo","Amarillo","Verde","Azul"))
x

unclass(x)

#Valores Faltantes
w<-c(1,2,NA,10,3)
is.na(w)
is.nan(w)

y<-c(1,2,NaN,10,3)
is.na(y)
is.nan(y)

#Data Frame
x<- data.frame(foo=1:4,bar=c(T,T,F,F))
x
nrow(x)
ncol(x)

#Nombres
x<-1:3
names(x)
names(x)<-c("foo","bar","norf")
x
names(x)

x<- list(a=1,b=2,c=3)
x

m<- matrix(1:4,nrow = 2,ncol = 2)
dimnames(m)<-list(c("a","b"),c("c","d"))
m