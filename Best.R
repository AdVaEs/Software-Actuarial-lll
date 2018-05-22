direc <- setwd("C:/Users/ave-2/Documents/Calidad de Hospitales - data")
direc <- paste(direc,"/outcome-of-care-measures.csv",sep="")
outcome <- read.csv(direc,colClasses = "character")


mejor <- function(estado,resultado)
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
 best<-final[which.min(final[, 2]), 1]
 best
}


mejor("TX","ataque")
mejor("MD","ataque")
mejor("TX","falla")
mejor("MD","neumonia")
mejor("BB","ataque")
mejor("NY","atakue")

