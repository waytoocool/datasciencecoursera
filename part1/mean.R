pollutantmean <- function(directory, pollutant, id = 1:332){
  Sum = 0
  length = 0
  for (x in id){
    a <- file.path(directory, formatC(x, width = 3, flag = "0"))
    b <- paste(a, "csv", sep = ".")
    data <- read.csv(b)
    Sum = Sum + sum(data[[pollutant]], na.rm = TRUE)
    length = length + length(data[[pollutant]][!is.na(data[[pollutant]])])
  }
  mean = Sum/length
  mean
  
}