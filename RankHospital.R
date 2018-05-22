direc <- setwd("C:/Users/ave-2/Documents/Calidad de Hospitales - data")
direc <- paste(direc,"/outcome-of-care-measures.csv",sep="")
outcome <- read.csv(direc,colClasses = "character")


rankhospital <- function(estado,resultado,num = "mejor")
{
   
   
   y<- unique(outcome$State)
   if(!estado %in% y)
   {
      stop("Estado invalido")
   }
   
   
   
   if(resultado == "ataque")
   {
      s <- 11 
   } else if(resultado == "falla")
   {
      s <- 17
   }else if(resultado == "neumonia")
   {
      s <- 23
   }else if(!resultado %in% c("ataque", "falla", "neumonia"))
   {
      stop("Analisis invalido")
   }
   
   #extraccion de los estados
   City <- outcome[outcome$State == estado, ]
   #estado y falla
   preliminar <- City[, c(2, s)]
   #convierte y ordena
   convers <- suppressWarnings(as.numeric(preliminar[,2]))
   orden <- order(convers, na.last = NA)
   final <- preliminar[orden, ]
   
   Nocasos <- nrow(final)
   
   if (num == "mejor")
   {
      num <- 1
   } else if(num == "peor")
   {
      num <- Nocasos
   } else if (num > Nocasos)
   {
      print(NA)
   }
   
   #compara cuales son iguales en tasas
   fc <- (final[,2] == final[num,2])
   #Separa los que tienen la misma tasa
   sc<- final[fc,]
   #Ordena alfabeticamente el rsultado
   lastc <- sc[order(sc[ ,1]),]
   best <- lastc[1,1]
   best
     
}

rankhospital("TX","falla", "peor")