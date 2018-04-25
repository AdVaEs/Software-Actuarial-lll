setwd("~/Github/Software-Actuarial-lll/Software-Actuarial-lll")

#Extraccion de Datos
airquality[1:6,]

completos<- complete.cases(airquality[1:6,])
data<- airquality[completos,]
data[1:6,]
#Al hacer una extraccion desde un vector de logicos, obtengo solo los valores de true

#Algunas operaciones
x<-1:4;y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y

x<-matrix(1:4,2,2);y<-matrix(rep(10,4),2,2)
x*y
x/y
x%*%y
y%*%x

x=3
if(x>5)
{
  print("X es mayor a 3")
}else{ 
  print("X es menor a 3")
}

x=7
if(x<5)
  {
  print("menor a 5")
}else if(x<=10)
  {
  print("Entre 5 y 10")
}else
  {
  print("Mayor a 10")
  }

if(x>3)
{y<-10
}else{
  y<-0
}

y<- if(x>3)
{
  10
}else{
  0
}

#Ciclos while
set.seed(1)
cont<- 0
z <-5
while(z>=3 && z<=10){
  moneda<-rbinom(1,1,0.5)
  if (moneda==1){
    z<- z+1
  }else{
    z<-z-1
  }
}
z