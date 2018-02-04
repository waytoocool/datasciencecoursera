complete <- function(directory, id = 1:332){
  obs <- c()
  for (x in id){
    a <- file.path(directory, formatC(x, width = 3, flag = "0"))
    b <- paste(a, "csv", sep = ".")
    data <- read.csv(b)
#    a <- data[!is.na(data[,2]) & !is.na(data[,3]),]
    a <- sum(complete.cases(data))
#    obs <- c(obs, length(a[[1]]))
    obs <- c(obs, a)
  }
  df = data.frame(id, obs)
  df
}