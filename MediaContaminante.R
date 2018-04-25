
direct = "C:/Users/ave-2/Documents/specdata"

mediacontaminante <- function(direc = direct, contaminante = "sulfate", id = 1:332) 
{
   casos <- numeric()
   
   if (contaminante == "nitrate")
   {
      for (i in id)
      {
         x <- paste(direc,"/",formatC(i,width = 3,flag="0"),".csv", sep = "")
         y <-read.csv(x, header = TRUE)
         casos <- c(casos,y$nitrate)
         prom <- mean(casos, na.rm = TRUE)
      }
   }else if (contaminante == "sulfate"){
      for (i in id)
      {
         x <- paste(direc,"/",formatC(i,width = 3,flag="0"),".csv", sep = "")
         y <-read.csv(x, header = TRUE)
         casos <- c(casos,y$sulfate)
         prom <- mean(casos, na.rm = TRUE)
      }
   }
  
    prom
}

mediacontaminante(contaminante = "sulfate", id=1:332)
