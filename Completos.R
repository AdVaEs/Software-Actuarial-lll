
direct = "C:/Users/ave-2/Documents/specdata"

completos <- function(direc = direct, id = 1:332) 
{
   musubi<- numeric()
   
   for(s in id)
   {
      x <- paste(direc,"/",formatC(s,width = 3,flag="0"),".csv", sep = "")
      y <-read.csv(x, header = TRUE)
      
      suma <- 0
      
      for (a in 1:nrow(y))
      {
         r <- complete.cases(y[a,])
         
         if (r == TRUE)
         {
            suma <- suma + 1
         }
      }
      
      musubi <- c(musubi,suma)
   }
   
   ID = id
   tabla <- data.frame(id=ID, nobs= musubi)
   print(tabla)
}

completos(id= 1:5)