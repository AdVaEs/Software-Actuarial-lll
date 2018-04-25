set.seed(1)
z<-5
s<-vector("numeric")
s<-z
while(z>=3 && z<=10){
  moneda<-rbinom(1,1,0.5)
  s<-c(s,z)
  if(moneda==1){ 
    z<-z+1
  } else {
    z<-z-1
  }
}
print(s)
plot(s, type = "b")

#s<-vector("numeric")
#s<-z
a<-0
for(i in 1:100000){
  z<-6.5
while(z>=3 && z<=10){
  moneda<-rbinom(1,1,0.5)
  #s<-c(s,z)
  if(moneda==1){ 
    z<-z+1
  } else {
    z<-z-1
  }
}
  
if(z<3)
{
  a<-a+1
}
} 
paste("En", i, "intentos, se sale", a, "veces por debajo y ", i-a, "por arriba")
paste("La probabilidad de que salga por abajo es:", a/i, "%")