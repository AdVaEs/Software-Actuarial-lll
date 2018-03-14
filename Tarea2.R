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